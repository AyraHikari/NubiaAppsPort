.class Lcn/nubia/music/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MainActivity;
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
    .line 96
    iput-object p1, p0, Lcn/nubia/music/MainActivity$1;->a:Lcn/nubia/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/music/MainActivity$1;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$000(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcn/nubia/music/MainActivity$1;->a:Lcn/nubia/music/MainActivity;

    invoke-virtual {v0}, Lcn/nubia/music/MainActivity;->finish()V

    .line 104
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/MainActivity$1;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$000(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->markCtsPermissionIsNotFirstLaunch()V

    .line 105
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MainActivity$1;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$100(Lcn/nubia/music/MainActivity;)V

    goto :goto_0
.end method
