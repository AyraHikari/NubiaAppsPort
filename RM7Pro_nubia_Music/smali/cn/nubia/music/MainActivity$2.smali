.class Lcn/nubia/music/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcn/nubia/music/utils/CTA$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MainActivity;->checkCta()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/MainActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcn/nubia/music/MainActivity$2;->a:Lcn/nubia/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveBtnClick()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/music/MainActivity$2;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$000(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "2-1"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcn/nubia/music/MainActivity$2;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$100(Lcn/nubia/music/MainActivity;)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v0, "2-2"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcn/nubia/music/MainActivity$2;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$000(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MainActivity$2;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v1}, Lcn/nubia/music/MainActivity;->access$200(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/CtsManager;->requestCtsPermissions(Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V

    goto :goto_0
.end method
