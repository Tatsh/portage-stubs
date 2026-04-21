local utils = import 'utils.libjsonnet';

{
  uses_user_defaults: true,
  description: 'PEP 561 type stubs for portage.',
  keywords: ['gentoo', 'pep561', 'portage', 'stubs', 'types'],
  project_name: 'portage-stubs',
  version: '0.0.9',
  want_docs: false,
  want_tests: false,
  stubs_only: true,
  primary_module: 'portage-stubs',
  pyproject+: {
    tool+: {
      poetry+: {
        group+: {
          dev+: {
            dependencies+: {
              portage: utils.latestPypiPackageVersionCaret('portage'),
            },
          },
        },
      },
    },
  },
}
