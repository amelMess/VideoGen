/*
 * generated by Xtext 2.10.0
 */
grammar InternalPlaylist;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.xtext.example.playlist.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.xtext.example.playlist.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.xtext.example.playlist.services.PlaylistGrammarAccess;

}
@parser::members {
	private PlaylistGrammarAccess grammarAccess;

	public void setGrammarAccess(PlaylistGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRulePlaylist
entryRulePlaylist
:
{ before(grammarAccess.getPlaylistRule()); }
	 rulePlaylist
{ after(grammarAccess.getPlaylistRule()); } 
	 EOF 
;

// Rule Playlist
rulePlaylist 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		(
			{ before(grammarAccess.getPlaylistAccess().getVideosAssignment()); }
			(rule__Playlist__VideosAssignment)
			{ after(grammarAccess.getPlaylistAccess().getVideosAssignment()); }
		)
		(
			{ before(grammarAccess.getPlaylistAccess().getVideosAssignment()); }
			(rule__Playlist__VideosAssignment)*
			{ after(grammarAccess.getPlaylistAccess().getVideosAssignment()); }
		)
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVideo
entryRuleVideo
:
{ before(grammarAccess.getVideoRule()); }
	 ruleVideo
{ after(grammarAccess.getVideoRule()); } 
	 EOF 
;

// Rule Video
ruleVideo 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVideoAccess().getGroup()); }
		(rule__Video__Group__0)
		{ after(grammarAccess.getVideoAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Video__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Video__Group__0__Impl
	rule__Video__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Video__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVideoAccess().getFileKeyword_0()); }
	'file'
	{ after(grammarAccess.getVideoAccess().getFileKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Video__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Video__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Video__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVideoAccess().getNameAssignment_1()); }
	(rule__Video__NameAssignment_1)
	{ after(grammarAccess.getVideoAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Playlist__VideosAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPlaylistAccess().getVideosVideoParserRuleCall_0()); }
		ruleVideo
		{ after(grammarAccess.getPlaylistAccess().getVideosVideoParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Video__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVideoAccess().getNameSTRINGTerminalRuleCall_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getVideoAccess().getNameSTRINGTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;