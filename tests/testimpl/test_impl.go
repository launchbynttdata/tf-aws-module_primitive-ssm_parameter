package testimpl

import (
	"context"
	"strconv"
	"testing"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/aws/aws-sdk-go-v2/service/ssm"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/launchbynttdata/lcaf-component-terratest/types"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestComposableComplete(t *testing.T, ctx types.TestContext) {
	ssmClient := GetAWSSSMClient(t)

	ssmParameterArn := terraform.Output(t, ctx.TerratestTerraformOptions(), "parameter_arn")
	ssmParameterName := terraform.Output(t, ctx.TerratestTerraformOptions(), "parameter_name")
	ssmParameterVersion := terraform.Output(t, ctx.TerratestTerraformOptions(), "parameter_version")

	expectedParameterVersion, err := strconv.ParseInt(ssmParameterVersion, 10, 64)
	if err != nil {
		t.Errorf("Failure converting expectedParameterVersion: %v", err)
	}
	t.Run("TestSSMParameterExists", func(t *testing.T) {
		parameter, err := ssmClient.GetParameter(context.TODO(), &ssm.GetParameterInput{
			Name: &ssmParameterName,
		})
		if err != nil {
			t.Errorf("Failure during GetApi: %v", err)
		}

		assert.Equal(t, *parameter.Parameter.ARN, ssmParameterArn, "Expected ARN did not match actual ARN!")
		assert.Equal(t, *parameter.Parameter.Name, ssmParameterName, "Expected ARN did not match actual ARN!")
		assert.Equal(t, parameter.Parameter.Version, expectedParameterVersion, "Expected Version did not match actual Version!")
		assert.Equal(t, *parameter.Parameter.Value, "foo-bar-baz", "Expected Value did not match actual Value!")
	})
}

func GetAWSSSMClient(t *testing.T) *ssm.Client {
	awsSSMClient := ssm.NewFromConfig(GetAWSConfig(t))
	return awsSSMClient
}

func GetAWSConfig(t *testing.T) (cfg aws.Config) {
	cfg, err := config.LoadDefaultConfig(context.TODO())
	require.NoErrorf(t, err, "unable to load SDK config, %v", err)
	return cfg
}
