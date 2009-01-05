#Enums
_CONV_ENUM(Gst,AssocFlags)
_CONV_ENUM(Gst,BufferCopyFlags)
_CONV_ENUM(Gst,BufferFlag)
_CONV_ENUM(Gst,ClockEntryType)
_CONV_ENUM(Gst,ClockReturn)
_CONV_ENUM(Gst,ClockTime)
_CONV_ENUM(Gst,EventType)
_CONV_ENUM(Gst,FlowReturn)
_CONV_ENUM(Gst,Format)
_CONV_ENUM(Gst,IndexCertainty)
_CONV_ENUM(Gst,IndexEntryType)
_CONV_ENUM(Gst,IndexFlags)
_CONV_ENUM(Gst,IndexLookupMethod)
_CONV_ENUM(Gst,IndexResolverMethod)
_CONV_ENUM(Gst,MessageType)
_CONV_ENUM(Gst,PadDirection)
_CONV_ENUM(Gst,PadLinkReturn)
_CONV_ENUM(Gst,PadPresence)
_CONV_ENUM(Gst,QueryType)
_CONV_ENUM(Gst,SeekFlags)
_CONV_ENUM(Gst,SeekType)
_CONV_ENUM(Gst,State)
_CONV_ENUM(Gst,StateChange)
_CONV_ENUM(Gst,StateChangeReturn)
_CONV_ENUM(Gst,TagMergeMode)
_CONV_ENUM(Gst,TaskState)
_CONV_ENUM(Gst,URIType)

############### gstreamermm Class Conversions ######################

#Gst::Object
_CONVERSION(`GstObject*',`Glib::RefPtr<Gst::Object>',`Glib::wrap($3)')
_CONVERSION(`GstObject*',`Glib::RefPtr<const Gst::Object>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Object>&',`GstObject*',`Glib::unwrap($3)')
_CONVERSION(`Glib::RefPtr<Gst::Object>',`GstObject*',`Glib::unwrap($3)')

#Buffer
_CONVERSION(`GstBuffer*',`Glib::RefPtr<Gst::Buffer>',`Gst::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Buffer>&',`GstBuffer*', `Glib::unwrap($3)')
_CONVERSION(`const Glib::RefPtr<const Gst::Buffer>&',`GstBuffer*', `const_cast<GstBuffer*>(Glib::unwrap($3))')
_CONVERSION(`const Glib::RefPtr<Gst::Buffer>&',`const GstBuffer*', `Glib::unwrap($3)')
_CONVERSION(`Glib::RefPtr<Gst::Buffer>',`GstBuffer*', `Glib::unwrap($3)')

#Bus
_CONVERSION(`const Glib::RefPtr<Gst::Bus>&',`GstBus*', `Glib::unwrap($3)')
_CONVERSION(`GstBus*',`Glib::RefPtr<Gst::Bus>',`Glib::wrap($3)')
_CONVERSION(`GstBus*',`const Glib::RefPtr<Gst::Bus>&',`Glib::wrap($3)')

#Caps
_CONVERSION(`GstCaps*',`Glib::RefPtr<Gst::Caps>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Caps>&',`GstCaps*', `Glib::unwrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Caps>&',`const GstCaps*', `Glib::unwrap($3)')
_CONVERSION(`const Glib::RefPtr<const Gst::Caps>&',`const GstCaps*', `Glib::unwrap($3)')

#Clock
_CONVERSION(`GstClock*',`Glib::RefPtr<Gst::Clock>',`Glib::wrap($3)')
_CONVERSION(`GstClock*',`Glib::RefPtr<const Gst::Clock>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Clock>&',`GstClock*', `Glib::unwrap($3)')
_CONVERSION(`const Clock&',`GstClock*',`((GstClock*) (&($3)))')
_CONVERSION(`Glib::RefPtr<Gst::Clock>',`GstClock*', `Glib::unwrap($3)')
_CONVERSION(`GstClock*',`const Glib::RefPtr<Gst::Clock>&',`Glib::wrap($3)')

#ClockID
_CONVERSION(`GstClockID',`Glib::RefPtr<Gst::ClockID>',`Glib::wrap((GstClockEntry*)($3))')
_CONVERSION(`const Glib::RefPtr<Gst::ClockID>&',`GstClockEntry*',`($3)->gobj()')
_CONVERSION(`GstClockEntry*',`const Glib::RefPtr<Gst::ClockID>&',`Glib::wrap($3)')

#ColorBalanceChannel
_CONVERSION(`const Glib::RefPtr<ColorBalanceChannel>&',`GstColorBalanceChannel*',`($3)->gobj()')

#Element
_CONVERSION(`Glib::RefPtr<Gst::Element>',`GstElement*', `Glib::unwrap($3)')
_CONVERSION(`GstElement*',`Glib::RefPtr<Gst::Element>',`Glib::wrap($3)')
_CONVERSION(`GstElement*',`Glib::RefPtr<const Gst::Element>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Element>&',`GstElement*', `Glib::unwrap($3)')
_CONVERSION(`const Glib::RefPtr<const Gst::Element>&',`GstElement*', `const_cast<GstElement*>(Glib::unwrap($3))')
_CONVERSION(`State&',`GstState*',`((GstState*) (&($3)))')

#ElementFactory
_CONVERSION(`GstElementFactory*',`Glib::RefPtr<Gst::ElementFactory>',`Glib::wrap($3)')

#Event
_CONVERSION(`const Glib::RefPtr<Gst::Event>&',`GstEvent*', `Gst::unwrap($3)')
_CONVERSION(`GstEvent*',`const Glib::RefPtr<Gst::Event>&', `Gst::wrap($3)')

#Index
_CONVERSION(`GstIndex*',`Glib::RefPtr<Gst::Index>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Index>&',`GstIndex*',`Glib::unwrap($3)')
_CONVERSION(`const Gst::IndexAssociation&',`const GstIndexAssociation*',`((GstIndexAssociation*)(&($3)))')
_CONVERSION(`GstIndex*',`const Glib::RefPtr<Gst::Index>&',`Glib::wrap($3)')
_CONVERSION(`Glib::RefPtr<Gst::Index>',`GstIndex*',`Glib::unwrap($3)')

#IndexEntry
_CONVERSION(`GstIndexEntry*',`Gst::IndexEntry',`Glib::wrap($3)')
_CONVERSION(`GstIndexEntry*',`const Gst::IndexEntry&',`Glib::wrap($3)')
_CONVERSION(`const Gst::IndexEntry&',`GstIndexEntry*',`const_cast<GstIndexEntry*>(($3).gobj())')

#IndexFactory
_CONVERSION(`GstIndexFactory*',`Glib::RefPtr<Gst::IndexFactory>',`Glib::wrap($3)')
#
#Iterator
_CONVERSION(`GstIterator*',`Gst::Iterator<Gst::Element>',`Gst::Iterator<Gst::Element>::Iterator($3)')
_CONVERSION(`GstIterator*',`Gst::Iterator<Gst::Pad>',`Gst::Iterator<Gst::Pad>::Iterator($3)')
_CONVERSION(`GstIterator*',`Gst::IteratorBasic<const Gst::QueryTypeDefinition>',`Gst::IteratorBasic<const Gst::QueryTypeDefinition>::IteratorBasic($3)')

#Message
_CONVERSION(`GstMessage*',`Glib::RefPtr<Gst::Message>',`Gst::Message::wrap($3)')
_CONVERSION(`GstMessage*',`Glib::RefPtr<const Gst::Message>',`Gst::Message::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Message>&',`GstMessage*', `Glib::unwrap($3)')
_CONVERSION(`GstMessage*',`const Glib::RefPtr<Gst::Message>&',`Gst::Message::wrap($3)')

#Pad
_CONVERSION(`GstPad*',`Glib::RefPtr<Gst::Pad>',`Glib::wrap($3)')
_CONVERSION(`GstPad*',`Glib::RefPtr<const Gst::Pad>',`Glib::wrap($3)')
_CONVERSION(`Glib::RefPtr<Gst::Pad>',`GstPad*', `Glib::unwrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Pad>&',`GstPad*', `Glib::unwrap($3)')

#PadTemplate
_CONVERSION(`const Glib::RefPtr<Gst::PadTemplate>&',`GstPadTemplate*', `Glib::unwrap($3)')
_CONVERSION(`GstPadTemplate*',`Glib::RefPtr<Gst::PadTemplate>', `Glib::wrap($3)')
_CONVERSION(`GstPadTemplate*',`const Glib::RefPtr<Gst::PadTemplate>&', `Glib::wrap($3)')

#Plugin
_CONVERSION(`const Glib::RefPtr<Gst::Plugin>&',`GstPlugin*',`Glib::unwrap($3)')
_CONVERSION(`GstPlugin*',`Glib::RefPtr<Gst::Plugin>',`Glib::wrap($3)')

#PluginFeature
_CONVERSION(`GstPluginFeature*',`Glib::RefPtr<Gst::PluginFeature>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::PluginFeature>&',`GstPluginFeature*',`Glib::unwrap($3)')

#Query
_CONVERSION(`const Glib::RefPtr<Gst::Query>&',`GstQuery*', `Gst::unwrap($3)')
_CONVERSION(`GstQuery*',`const Glib::RefPtr<Gst::Query>&', `Gst::wrap($3)')

#Registry
_CONVERSION(`GstRegistry*',`Glib::RefPtr<Gst::Registry>', `Glib::wrap($3)')

#Structure
_CONVERSION(`const GstStructure*',`const Gst::Structure',`Glib::wrap(const_cast<GstStructure*>($3), true)')
_CONVERSION(`GstStructure*',`const Gst::Structure',`Glib::wrap(const_cast<GstStructure*>($3), true)')

#TagList
_CONVERSION(`const Gst::TagList&',`const GstTagList*',`(($3).gobj())')
_CONVERSION(`GstTagList*',`Gst::TagList',`Glib::wrap($3, 0, true)')
_CONVERSION(`const Gst::TagList&',`GstTagList*',`const_cast<GstTagList*>(($3).gobj())')
_CONVERSION(`const GstTagList*',`Gst::TagList',`Glib::wrap(const_cast<GstTagList*>($3), 0, true)')
_CONVERSION(`Gst::TagList',`GstTagList*',`($3).gobj()')

#URIHandler
_CONVERSION(`const Glib::RefPtr<Gst::URIHandler>&',`GstURIHandler*',`Glib::unwrap($3)')

###################General Conversions############################

#Basic General Conversions
_CONVERSION(`gint64&',`gint64*',`&($3)')
_CONVERSION(`bool&',`gboolean*',`(($2) &($3))')
_CONVERSION(`const guint&',`guint',`$3')
_CONVERSION(`const guint32&',`guint32',`$3')

#Basic Gstreamermm Conversions
_CONVERSION(`ClockTime&',`GstClockTime*',`(GstClockTime*)(&($3))')
_CONVERSION(`ClockTimeDiff',`GstClockTimeDiff',`GstClockTimeDiff($3)')
_CONVERSION(`GstClockTimeDiff',`ClockTimeDiff',`ClockTimeDiff($3)')
_CONVERSION(`ClockTimeDiff&',`GstClockTimeDiff*',`(GstClockTimeDiff*)(&($3))')
_CONVERSION(`Format&',`GstFormat*',`(($2) &($3))')
_CONVERSION(`GstClockTimeDiff*',`ClockTimeDiff&',`(ClockTimeDiff&)(*($3))')
_CONVERSION(`const GstQueryType*',`const QueryType*',`(QueryType*)($3)')
_CONVERSION(`GstState*',`State&',`(State&)($3)')
_CONVERSION(`GstTagFlag',`TagFlag',`(TagFlag)($3)')
_CONVERSION(`guint64',`ClockTime',`(ClockTime ($3))')
_CONVERSION(`const URIType',`const GstURIType',`(GstURIType($3))')

#C++ Conversions
_CONVERSION(`const va_list&',`va_list',`const_cast<va_list&>($3)')

#Glibmm Conversions
_CONVERSION(`GQuark',`Glib::QueryQuark',`Glib::QueryQuark($3)')
_CONVERSION(`const Glib::QueryQuark&',`GQuark',`$3')
_CONVERSION(`Glib::StaticRecMutex&',`GStaticRecMutex*',`($3).gobj()')

#String Conversions
_CONVERSION(`const std::string&',`const guchar*',`(($2)($3).c_str())')
_CONVERSION(`gchar*',`const Glib::ustring&',__GCHARP_TO_USTRING)
_CONVERSION(`const gchar*',`const Glib::ustring&',__GCHARP_TO_USTRING)
_CONVERSION(`Glib::ustring&',`const guchar*', (($2)($3).c_str()))

#libxml++ Conversions
_CONVERSION(`xmlpp::Node*',`xmlNodePtr',`($3)->cobj()')
_CONVERSION(`xmlpp::Document*',`xmlDocPtr',`($3)->cobj()')
