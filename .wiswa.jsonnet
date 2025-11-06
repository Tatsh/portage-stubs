{
  description: 'PEP 561 type stubs for portage.',
  keywords: ['gentoo', 'pep561', 'portage', 'stubs', 'types'],
  project_name: 'portage-stubs',
  version: '0.0.7',
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
              portage: { git: 'https://github.com/gentoo/portage.git' },
            },
          },
        },
      },
    },
  },
}
