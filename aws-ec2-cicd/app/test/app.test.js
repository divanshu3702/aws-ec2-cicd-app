const test = require("node:test");
const assert = require("node:assert/strict");

test("application version is defined", () => {
  const pkg = require("../package.json");
  assert.equal(pkg.name, "aws-ec2-cicd-app");
  assert.ok(pkg.version);
});
