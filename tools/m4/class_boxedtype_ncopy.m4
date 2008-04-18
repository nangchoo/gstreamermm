dnl Modified from class_boxed_type.m4 in glibmm (designed to work in a similar
dnl fashion except that the gobject is not copied if it can be helped and
dnl destruction of underlying gobject at wrapper destruction is flexible)

define(`_CLASS_BOXEDTYPE_NCOPY',`dnl
_PUSH()
dnl
dnl  Define the args for later macros
define(`__CPPNAME__',`$1')
define(`__CNAME__',`$2')
define(`__BOXEDTYPE_FUNC_NEW',`$3')
define(`__BOXEDTYPE_FUNC_COPY',`$4')
define(`__BOXEDTYPE_FUNC_FREE',`$5')

define(`_CUSTOM_DEFAULT_CTOR',`dnl
_PUSH()
dnl Define this macro to be tested for later.
define(`__BOOL_CUSTOM_DEFAULT_CTOR__',`$1')
_POP()
')


_POP()
_SECTION(SECTION_CLASS2)
') dnl End of _CLASS_BOXEDTYPE_NCOPY.

dnl Some of the Gdk types are unions - e.g. GdkEvent.
define(`_CUSTOM_STRUCT_PROTOTYPE',`dnl
_PUSH()
dnl Define this macro to be tested for later.
define(`__BOOL_CUSTOM_STRUCT_PROTOTYPE__',`$1')
_POP()
')

dnl
dnl _END_CLASS_BOXEDTYPE_NCOPY()
dnl   denotes the end of a class
dnl
define(`_END_CLASS_BOXEDTYPE_NCOPY',`
_SECTION(SECTION_HEADER1)
ifdef(`__BOOL_CUSTOM_STRUCT_PROTOTYPE__',`dnl
',`dnl
#ifndef DOXYGEN_SHOULD_SKIP_THIS
extern "C" { typedef struct _`'__CNAME__ __CNAME__; }
#endif
')dnl

_SECTION(SECTION_HEADER3)

__NAMESPACE_BEGIN__

/** @relates __NAMESPACE__::__CPPNAME__
 * @param lhs The left-hand side
 * @param rhs The right-hand side
 */
inline void swap(__CPPNAME__& lhs, __CPPNAME__& rhs)
  { lhs.swap(rhs); }

__NAMESPACE_END__

namespace Glib
{
ifdef(`__BOOL_NO_WRAP_FUNCTION__',`dnl
',`dnl else

/** A Glib::wrap() method for this object.
 * 
 * @param object The C instance.
 * @param take_copy False if the result should take ownership of the C instance. True if it should take a new copy or ref.
 * @param destroy False if the result should not delete the C instance when wrapper is destroyed. True if it should.
 * @result A C++ instance that wraps this C instance.
 *
 * @relates __NAMESPACE__::__CPPNAME__
 */
__NAMESPACE__::__CPPNAME__ wrap(__CNAME__* object, bool take_copy = false, bool destroy = true);
')dnl endif __BOOL_NO_WRAP_FUNCTION__

#ifndef DOXYGEN_SHOULD_SKIP_THIS
template <>
class Value<__NAMESPACE__::__CPPNAME__> : public Glib::Value_Boxed<__NAMESPACE__::__CPPNAME__>
{};
#endif /* DOXYGEN_SHOULD_SKIP_THIS */

} // namespace Glib

_SECTION(SECTION_SRC_GENERATED)

ifdef(`__BOOL_NO_WRAP_FUNCTION__',`dnl
',`dnl else
namespace Glib
{

__NAMESPACE__::__CPPNAME__ wrap(__CNAME__* object, bool take_copy, bool destroy)
{
  return __NAMESPACE__::__CPPNAME__`'(object, take_copy, destroy);
}

} // namespace Glib
')dnl endif


__NAMESPACE_BEGIN__

dnl
dnl The implementation:
dnl

// static
GType __CPPNAME__::get_type()
{
  return _GET_TYPE_FUNC(__CNAME__);
}

ifdef(`__BOOL_CUSTOM_DEFAULT_CTOR__',`dnl
',`dnl else
__CPPNAME__::__CPPNAME__`'()
:
ifelse(__BOXEDTYPE_FUNC_NEW,NONE,`dnl
  gobject_ (0), // Allows creation of invalid wrapper, e.g. for output arguments to methods.
  destroy(false)  // destroy tells whether to free gobject when wrapper is destroyed
',`dnl else
  gobject_ (__BOXEDTYPE_FUNC_NEW`'())
')dnl
{}
')dnl endif __BOOL_CUSTOM_DEFAULT_CTOR__

__CPPNAME__::__CPPNAME__`'(const __CPPNAME__& other)
:
  gobject_ (other.gobject_),  // Always use original object
  destroy(false)  // Do not delete gobject when wrapper is destroyed (let
                  // original wrapper do that)
{}

__CPPNAME__::__CPPNAME__`'(__CNAME__* gobject, bool make_a_copy, bool destroy)
:
  // For this ncopy BoxedType wrapper, make_a_copy is false by default
  // and destroy is true.
  gobject_ ((make_a_copy && gobject) ? __BOXEDTYPE_FUNC_COPY`'(gobject) : gobject),
  destroy(destroy) // Should wrapper destroy gobject when deleted?
{}

// operator=() DOES make copies of gobject.
__CPPNAME__& __CPPNAME__::operator=(const __CPPNAME__`'& other)
{
  __CPPNAME__ temp (gobject_, true);
  swap(temp);
  return *this;
}

__CPPNAME__::~__CPPNAME__`'()
{
dnl This could be a free or an unref, we do not need to know.
  if(destroy && gobject_)
    __BOXEDTYPE_FUNC_FREE`'(gobject_);
}

void __CPPNAME__::swap(__CPPNAME__& other)
{
  __CNAME__ *const temp = gobject_;
  gobject_ = other.gobject_;
  other.gobject_ = temp;

  bool const destroy_temp = destroy;
  destroy = other.destroy;
  other.destroy = destroy_temp;
}

__CNAME__* __CPPNAME__::gobj_copy() const
{
  return __BOXEDTYPE_FUNC_COPY`'(gobject_);
}

//
void __CPPNAME__::set_destroy(bool destroy)
{
  this->destroy = destroy;
}

_IMPORT(SECTION_CC)

__NAMESPACE_END__


dnl
dnl
dnl
dnl
_POP()
dnl
dnl
dnl The actual class, e.g. Pango::FontDescription, declaration:
dnl
_IMPORT(SECTION_CLASS1)
public:
#ifndef DOXYGEN_SHOULD_SKIP_THIS
  typedef __CPPNAME__ CppObjectType;
  typedef __CNAME__ BaseObjectType;

  static GType get_type() G_GNUC_CONST;
#endif /* DOXYGEN_SHOULD_SKIP_THIS */

ifdef(`__BOOL_CUSTOM_DEFAULT_CTOR__',`dnl
',`dnl else
  __CPPNAME__`'();
')dnl

  explicit __CPPNAME__`'(__CNAME__* gobject, bool make_a_copy = false, bool destroy = true);

  __CPPNAME__`'(const __CPPNAME__& other);
  __CPPNAME__& operator=(const __CPPNAME__& other);

  ~__CPPNAME__`'();

  void swap(__CPPNAME__& other);

  ///Provides access to the underlying C instance.
  __CNAME__*       gobj()       { return gobject_; }

  ///Provides access to the underlying C instance.
  const __CNAME__* gobj() const { return gobject_; }

  ///Provides access to the underlying C instance. The caller is responsible for freeing it. Use when directly setting fields in structs.
  __CNAME__* gobj_copy() const;

  /** Change whether the wrapper should destroy the underlying gobject or not
   * when the wrapper is deleted.
   * @param destroy whether or not the wrapper should destroy the underlying
   * gobject when it is destroyed
   */
  void set_destroy(bool destroy);

protected:
  __CNAME__* gobject_;

private:
  bool destroy;

private:
_IMPORT(SECTION_CLASS2)
')

