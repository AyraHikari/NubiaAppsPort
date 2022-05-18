.class Lcn/nubia/music/activity/FileNameInputActivity$4;
.super Ljava/lang/Object;
.source "FileNameInputActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/FileNameInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/FileNameInputActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/FileNameInputActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcn/nubia/music/activity/FileNameInputActivity$4;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$4;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOpenClicked FileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 157
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 158
    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$4;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/music/activity/FileNameInputActivity;->setResult(ILandroid/content/Intent;)V

    .line 160
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$4;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->access$200(Lcn/nubia/music/activity/FileNameInputActivity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 161
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$4;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->finish()V

    .line 162
    return-void
.end method
