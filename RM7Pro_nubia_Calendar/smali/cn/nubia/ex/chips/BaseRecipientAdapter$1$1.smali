.class Lcn/nubia/ex/chips/BaseRecipientAdapter$1$1;
.super Ljava/lang/Object;
.source "BaseRecipientAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/ex/chips/BaseRecipientAdapter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/ex/chips/BaseRecipientAdapter$1;

.field final synthetic val$photoBytes:[B


# direct methods
.method constructor <init>(Lcn/nubia/ex/chips/BaseRecipientAdapter$1;[B)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/ex/chips/BaseRecipientAdapter$1;

    .prologue
    .line 730
    iput-object p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$1$1;->this$1:Lcn/nubia/ex/chips/BaseRecipientAdapter$1;

    iput-object p2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$1$1;->val$photoBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 733
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$1$1;->this$1:Lcn/nubia/ex/chips/BaseRecipientAdapter$1;

    iget-object v0, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$1;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$1600(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$1$1;->this$1:Lcn/nubia/ex/chips/BaseRecipientAdapter$1;

    iget-object v1, v1, Lcn/nubia/ex/chips/BaseRecipientAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$1$1;->val$photoBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$1$1;->this$1:Lcn/nubia/ex/chips/BaseRecipientAdapter$1;

    iget-object v0, v0, Lcn/nubia/ex/chips/BaseRecipientAdapter$1;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V

    .line 735
    return-void
.end method
