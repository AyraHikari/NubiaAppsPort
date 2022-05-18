.class Lcn/nubia/improve/rename/MediaItemRename$2;
.super Ljava/lang/Object;
.source "MediaItemRename.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/rename/MediaItemRename;->ShowDiag(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/rename/MediaItemRename;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/improve/rename/MediaItemRename;Landroid/content/Context;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    iput-object p2, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 74
    check-cast p1, Landroid/app/AlertDialog;

    const p2, 0x7f090096

    .line 75
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 76
    iget-object p2, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/nubia/improve/rename/MediaItemRename;->access$102(Lcn/nubia/improve/rename/MediaItemRename;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p1}, Lcn/nubia/improve/rename/MediaItemRename;->access$100(Lcn/nubia/improve/rename/MediaItemRename;)Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p2}, Lcn/nubia/improve/rename/MediaItemRename;->access$200(Lcn/nubia/improve/rename/MediaItemRename;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    iget-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p1}, Lcn/nubia/improve/rename/MediaItemRename;->access$400(Lcn/nubia/improve/rename/MediaItemRename;)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/ui/CloudMediaItem;

    iget-object p2, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p2}, Lcn/nubia/improve/rename/MediaItemRename;->access$300(Lcn/nubia/improve/rename/MediaItemRename;)Lcn/nubia/improve/rename/MediaItemRename$Listener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/cloud/ui/CloudMediaItem;->setRenameDoneListener(Lcn/nubia/improve/rename/MediaItemRename$Listener;)V

    .line 80
    iget-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p1}, Lcn/nubia/improve/rename/MediaItemRename;->access$400(Lcn/nubia/improve/rename/MediaItemRename;)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p2}, Lcn/nubia/improve/rename/MediaItemRename;->access$100(Lcn/nubia/improve/rename/MediaItemRename;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/MediaItem;->setReName(Ljava/lang/String;)Z

    goto :goto_0

    .line 81
    :cond_0
    iget-object p2, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    iget-object v0, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->val$context:Landroid/content/Context;

    invoke-static {p2, v0, p1}, Lcn/nubia/improve/rename/MediaItemRename;->access$500(Lcn/nubia/improve/rename/MediaItemRename;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p1}, Lcn/nubia/improve/rename/MediaItemRename;->access$400(Lcn/nubia/improve/rename/MediaItemRename;)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p2}, Lcn/nubia/improve/rename/MediaItemRename;->access$100(Lcn/nubia/improve/rename/MediaItemRename;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/MediaItem;->setReName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->val$context:Landroid/content/Context;

    const p2, 0x7f1001cc

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 86
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p1}, Lcn/nubia/improve/rename/MediaItemRename;->access$300(Lcn/nubia/improve/rename/MediaItemRename;)Lcn/nubia/improve/rename/MediaItemRename$Listener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 87
    iget-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename$2;->this$0:Lcn/nubia/improve/rename/MediaItemRename;

    invoke-static {p1}, Lcn/nubia/improve/rename/MediaItemRename;->access$300(Lcn/nubia/improve/rename/MediaItemRename;)Lcn/nubia/improve/rename/MediaItemRename$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/rename/MediaItemRename$Listener;->renameDone()V

    :cond_2
    :goto_0
    return-void
.end method
