.class Lcn/nubia/music/activity/DeleteItemsActivity$4;
.super Ljava/lang/Object;
.source "DeleteItemsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/DeleteItemsActivity;->onDelete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/music/activity/DeleteItemsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/DeleteItemsActivity;I)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcn/nubia/music/activity/DeleteItemsActivity$4;->b:Lcn/nubia/music/activity/DeleteItemsActivity;

    iput p2, p0, Lcn/nubia/music/activity/DeleteItemsActivity$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$4;->b:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$400(Lcn/nubia/music/activity/DeleteItemsActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/activity/DeleteItemsActivity$4;->a:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setProgress(I)V

    .line 173
    return-void
.end method
