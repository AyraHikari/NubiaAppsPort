.class Lcn/nubia/notepad/utils/CtaPermissionUtils$1;
.super Ljava/lang/Object;
.source "CtaPermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/utils/CtaPermissionUtils;->showCtaWarning(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/utils/CtaPermissionUtils;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/utils/CtaPermissionUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/utils/CtaPermissionUtils;

    .prologue
    .line 118
    iput-object p1, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils$1;->this$0:Lcn/nubia/notepad/utils/CtaPermissionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils$1;->this$0:Lcn/nubia/notepad/utils/CtaPermissionUtils;

    invoke-static {v0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->access$000(Lcn/nubia/notepad/utils/CtaPermissionUtils;)Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils$1;->this$0:Lcn/nubia/notepad/utils/CtaPermissionUtils;

    invoke-static {v0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->access$000(Lcn/nubia/notepad/utils/CtaPermissionUtils;)Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;->onDenied()V

    .line 124
    :cond_0
    return-void
.end method
