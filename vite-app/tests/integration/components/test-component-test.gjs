import { module, test } from 'qunit';
import { setupRenderingTest } from 'vite-app/tests/helpers';
import { render } from '@ember/test-helpers';
import TestComponent from 'vite-app/components/test-component';

module('Integration | Component | test-component', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    // Updating values is achieved using autotracking, just like in app code. For example:
    // class State { @tracked myProperty = 0; }; const state = new State();
    // and update using state.myProperty = 1; await rerender();
    // Handle any actions with function myAction(val) { ... };

    await render(<template><TestComponent /></template>);

    assert.dom().hasText('');

    // Template block usage:
    await render(<template>
      <TestComponent>
        template block text
      </TestComponent>
    </template>);

    assert.dom().hasText('template block text');
  });
});
