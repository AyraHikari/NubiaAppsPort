.class Lcn/nubia/music/activity/DeleteItemsActivity$6;
.super Ljava/lang/Object;
.source "DeleteItemsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/DeleteItemsActivity;->onfinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/music/activity/DeleteItemsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/DeleteItemsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcn/nubia/music/activity/DeleteItemsActivity$6;->b:Lcn/nubia/music/activity/DeleteItemsActivity;

    iput-object p2, p0, Lcn/nubia/music/activity/DeleteItemsActivity$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$6;->b:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/DeleteItemsActivity$6;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 200
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$6;->b:Lcn/nubia/music/activity/DeleteItemsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/DeleteItemsActivity;->setResult(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$6;->b:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->finish()V

    .line 203
    return-void
.end method
