.class Lcn/nubia/improve/share/PhotoPageShareManager$1;
.super Ljava/lang/Object;
.source "PhotoPageShareManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/share/PhotoPageShareManager;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/share/PhotoPageShareManager;


# direct methods
.method constructor <init>(Lcn/nubia/improve/share/PhotoPageShareManager;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$1;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    .line 162
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$1;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$000(Lcn/nubia/improve/share/PhotoPageShareManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$1;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/improve/share/PhotoPageShareManager;->leaveShareMode(I)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$1;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$1;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/improve/share/PhotoPageShareManager;->leaveShareMode(I)V

    .line 169
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$1;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-virtual {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->hide()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
