/*
 * generated by Xtext 2.10.0
 */
package org.xtext.example.playlist.ui;

import com.google.inject.Injector;
import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;
import org.xtext.example.playlist.ui.internal.PlaylistActivator;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class PlaylistExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return PlaylistActivator.getInstance().getBundle();
	}
	
	@Override
	protected Injector getInjector() {
		return PlaylistActivator.getInstance().getInjector(PlaylistActivator.ORG_XTEXT_EXAMPLE_PLAYLIST_PLAYLIST);
	}
	
}
