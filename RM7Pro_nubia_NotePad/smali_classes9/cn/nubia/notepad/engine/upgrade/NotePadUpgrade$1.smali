.class Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade$1;
.super Ljava/lang/Object;
.source "NotePadUpgrade.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->showUpgradeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;

    .prologue
    .line 90
    iput-object p1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade$1;->this$0:Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade$1;->this$0:Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;

    invoke-static {v0}, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->access$000(Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade$1;->this$0:Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->addDownLoadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade$1;->this$0:Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;

    invoke-static {v0}, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->access$000(Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade$1;->this$0:Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;

    invoke-static {v1}, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->access$100(Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade$1;->this$0:Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;

    .line 94
    invoke-static {v2}, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->access$200(Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 95
    return-void
.end method
