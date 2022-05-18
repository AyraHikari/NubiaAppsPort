.class Lcn/nubia/deskclock/ui/FragmentCompat$BaseFragmentCompatImpl;
.super Ljava/lang/Object;
.source "FragmentCompat.java"

# interfaces
.implements Lcn/nubia/deskclock/ui/FragmentCompat$FragmentCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseFragmentCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setMenuVisibility(Landroid/app/Fragment;Z)V
    .locals 0
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "visible"    # Z

    .prologue
    .line 34
    return-void
.end method

.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "deferStart"    # Z

    .prologue
    .line 37
    return-void
.end method
