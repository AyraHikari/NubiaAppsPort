.class Lcn/nubia/music/utils/CtsManager$1;
.super Ljava/lang/Object;
.source "CtsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/CtsManager;->showWarningDialog(Ljava/lang/StringBuffer;Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/utils/CtsManager;


# direct methods
.method constructor <init>(Lcn/nubia/music/utils/CtsManager;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcn/nubia/music/utils/CtsManager$1;->a:Lcn/nubia/music/utils/CtsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/music/utils/CtsManager$1;->a:Lcn/nubia/music/utils/CtsManager;

    .line 106
    invoke-static {v3}, Lcn/nubia/music/utils/CtsManager;->access$000(Lcn/nubia/music/utils/CtsManager;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcn/nubia/music/utils/CtsManager$1;->a:Lcn/nubia/music/utils/CtsManager;

    invoke-static {v1}, Lcn/nubia/music/utils/CtsManager;->access$000(Lcn/nubia/music/utils/CtsManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager$1;->a:Lcn/nubia/music/utils/CtsManager;

    invoke-static {v0}, Lcn/nubia/music/utils/CtsManager;->access$000(Lcn/nubia/music/utils/CtsManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 111
    return-void
.end method
