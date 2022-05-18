.class final Lcn/nubia/music/utils/CTA$2;
.super Ljava/lang/Object;
.source "CTA.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/CTA;->showCTADialog(Landroid/content/Context;Lcn/nubia/music/utils/CTA$OnBtnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/nubia/music/utils/CTA$OnBtnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/music/utils/CTA$OnBtnClickListener;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcn/nubia/music/utils/CTA$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/music/utils/CTA$2;->b:Lcn/nubia/music/utils/CTA$OnBtnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/music/utils/CTA$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/music/utils/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;)I

    move-result v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fast request permission state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcn/nubia/music/utils/CTA$2;->b:Lcn/nubia/music/utils/CTA$OnBtnClickListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcn/nubia/music/utils/CTA$2;->b:Lcn/nubia/music/utils/CTA$OnBtnClickListener;

    invoke-interface {v0}, Lcn/nubia/music/utils/CTA$OnBtnClickListener;->onPositiveBtnClick()V

    .line 53
    :cond_0
    invoke-static {}, Lcn/nubia/music/utils/CTA;->disable()V

    .line 54
    iget-object v0, p0, Lcn/nubia/music/utils/CTA$2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method
