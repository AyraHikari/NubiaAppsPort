.class public Lcn/nubia/deskclock/ui/FragmentCompat;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/FragmentCompat$ICSMR1FragmentCompatImpl;,
        Lcn/nubia/deskclock/ui/FragmentCompat$ICSFragmentCompatImpl;,
        Lcn/nubia/deskclock/ui/FragmentCompat$BaseFragmentCompatImpl;,
        Lcn/nubia/deskclock/ui/FragmentCompat$FragmentCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcn/nubia/deskclock/ui/FragmentCompat$FragmentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Lcn/nubia/deskclock/ui/FragmentCompat$ICSMR1FragmentCompatImpl;

    invoke-direct {v0}, Lcn/nubia/deskclock/ui/FragmentCompat$ICSMR1FragmentCompatImpl;-><init>()V

    sput-object v0, Lcn/nubia/deskclock/ui/FragmentCompat;->IMPL:Lcn/nubia/deskclock/ui/FragmentCompat$FragmentCompatImpl;

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 59
    new-instance v0, Lcn/nubia/deskclock/ui/FragmentCompat$ICSFragmentCompatImpl;

    invoke-direct {v0}, Lcn/nubia/deskclock/ui/FragmentCompat$ICSFragmentCompatImpl;-><init>()V

    sput-object v0, Lcn/nubia/deskclock/ui/FragmentCompat;->IMPL:Lcn/nubia/deskclock/ui/FragmentCompat$FragmentCompatImpl;

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lcn/nubia/deskclock/ui/FragmentCompat$BaseFragmentCompatImpl;

    invoke-direct {v0}, Lcn/nubia/deskclock/ui/FragmentCompat$BaseFragmentCompatImpl;-><init>()V

    sput-object v0, Lcn/nubia/deskclock/ui/FragmentCompat;->IMPL:Lcn/nubia/deskclock/ui/FragmentCompat$FragmentCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMenuVisibility(Landroid/app/Fragment;Z)V
    .locals 1
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "visible"    # Z

    .prologue
    .line 71
    sget-object v0, Lcn/nubia/deskclock/ui/FragmentCompat;->IMPL:Lcn/nubia/deskclock/ui/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Lcn/nubia/deskclock/ui/FragmentCompat$FragmentCompatImpl;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 72
    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 1
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "deferStart"    # Z

    .prologue
    .line 80
    sget-object v0, Lcn/nubia/deskclock/ui/FragmentCompat;->IMPL:Lcn/nubia/deskclock/ui/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Lcn/nubia/deskclock/ui/FragmentCompat$FragmentCompatImpl;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 81
    return-void
.end method
