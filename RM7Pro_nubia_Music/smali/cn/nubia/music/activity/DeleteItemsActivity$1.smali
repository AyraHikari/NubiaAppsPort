.class Lcn/nubia/music/activity/DeleteItemsActivity$1;
.super Ljava/lang/Object;
.source "DeleteItemsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/DeleteItemsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/DeleteItemsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/DeleteItemsActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/music/activity/DeleteItemsActivity$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$000(Lcn/nubia/music/activity/DeleteItemsActivity;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$000(Lcn/nubia/music/activity/DeleteItemsActivity;)[J

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$102(Lcn/nubia/music/activity/DeleteItemsActivity;Z)Z

    .line 86
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$200(Lcn/nubia/music/activity/DeleteItemsActivity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 106
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$102(Lcn/nubia/music/activity/DeleteItemsActivity;Z)Z

    .line 90
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$200(Lcn/nubia/music/activity/DeleteItemsActivity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 92
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$300(Lcn/nubia/music/activity/DeleteItemsActivity;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$400(Lcn/nubia/music/activity/DeleteItemsActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/DeleteItemsActivity$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$000(Lcn/nubia/music/activity/DeleteItemsActivity;)[J

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setMax(I)V

    .line 94
    new-instance v0, Lcn/nubia/music/activity/DeleteItemsActivity$1$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/DeleteItemsActivity$1$1;-><init>(Lcn/nubia/music/activity/DeleteItemsActivity$1;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
