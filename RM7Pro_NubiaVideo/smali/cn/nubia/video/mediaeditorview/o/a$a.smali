.class Lcn/nubia/video/mediaeditorview/o/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/o/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/o/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/o/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a$a;->a:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a$a;->a:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/o/a;->b(Lcn/nubia/video/mediaeditorview/o/a;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a$a;->a:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/o/a;->b(Lcn/nubia/video/mediaeditorview/o/a;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a$a;->a:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/o/a;->b(Lcn/nubia/video/mediaeditorview/o/a;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getStartTime()J

    move-result-wide v2

    .line 5
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/o/a$a;->a:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-static {v4}, Lcn/nubia/video/mediaeditorview/o/a;->b(Lcn/nubia/video/mediaeditorview/o/a;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getEndTime()J

    move-result-wide v4

    .line 6
    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-long v7, v6

    cmp-long v2, v7, v2

    if-lez v2, :cond_1

    int-to-long v2, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 7
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a$a;->a:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/o/a;->b(Lcn/nubia/video/mediaeditorview/o/a;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a$a;->a:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/o/a;->b(Lcn/nubia/video/mediaeditorview/o/a;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setSelect(Z)V

    .line 9
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a$a;->a:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/o/a;->b(Lcn/nubia/video/mediaeditorview/o/a;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->setAddWordSelectImageCount(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_1
    return-void
.end method
