.class Lcn/nubia/music/activity/FileNameInputActivity$2;
.super Ljava/lang/Object;
.source "FileNameInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/FileNameInputActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 77
    iput-object p1, p0, Lcn/nubia/music/activity/FileNameInputActivity$2;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$2;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 81
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$2;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 82
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$2;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 84
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$2;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    const-string v1, "input_method"

    .line 85
    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/FileNameInputActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 87
    iget-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity$2;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 88
    return-void
.end method
