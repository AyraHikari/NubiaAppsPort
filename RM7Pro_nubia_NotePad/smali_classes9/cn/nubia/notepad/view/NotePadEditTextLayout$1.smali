.class Lcn/nubia/notepad/view/NotePadEditTextLayout$1;
.super Ljava/lang/Object;
.source "NotePadEditTextLayout.java"

# interfaces
.implements Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/NotePadEditTextLayout;->checkPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NotePadEditTextLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .prologue
    .line 571
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$1;->this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 0

    .prologue
    .line 577
    return-void
.end method

.method public onGranted()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method
