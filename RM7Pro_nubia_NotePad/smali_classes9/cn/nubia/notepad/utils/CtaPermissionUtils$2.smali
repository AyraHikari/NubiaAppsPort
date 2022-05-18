.class Lcn/nubia/notepad/utils/CtaPermissionUtils$2;
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
    .line 127
    iput-object p1, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils$2;->this$0:Lcn/nubia/notepad/utils/CtaPermissionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils$2;->this$0:Lcn/nubia/notepad/utils/CtaPermissionUtils;

    invoke-static {v0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->access$100(Lcn/nubia/notepad/utils/CtaPermissionUtils;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->access$200(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils$2;->this$0:Lcn/nubia/notepad/utils/CtaPermissionUtils;

    invoke-static {v0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->access$300(Lcn/nubia/notepad/utils/CtaPermissionUtils;)V

    .line 131
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 132
    return-void
.end method
