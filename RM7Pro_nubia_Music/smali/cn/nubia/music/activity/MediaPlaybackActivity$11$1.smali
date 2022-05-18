.class Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;
.super Landroid/os/AsyncTask;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity$11;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iput-object p2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$300(Lcn/nubia/music/activity/MediaPlaybackActivity;)Z

    move-result v0

    .line 240
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 245
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$400(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/widget/NubiaMorePopup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    new-instance v1, Lcn/nubia/music/activity/MediaPlaybackActivity$b;

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v2, v2, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v3, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v3, v3, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v3}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v4, v4, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v4}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$700(Lcn/nubia/music/activity/MediaPlaybackActivity;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/music/activity/MediaPlaybackActivity$b;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$502(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/music/activity/MediaPlaybackActivity$b;)Lcn/nubia/music/activity/MediaPlaybackActivity$b;

    .line 247
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$400(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/widget/NubiaMorePopup;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v1, v1, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$500(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$b;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v2, v2, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$800(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v3, v3, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v3}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$700(Lcn/nubia/music/activity/MediaPlaybackActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setAdapter(Landroid/widget/BaseAdapter;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;[Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v1, v1, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$400(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/widget/NubiaMorePopup;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$902(Lcn/nubia/music/activity/MediaPlaybackActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 249
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$400(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/widget/NubiaMorePopup;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setAnchorView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$400(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/widget/NubiaMorePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show()V

    .line 252
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    new-instance v1, Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v2, v2, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/music/activity/MediaPlaybackActivity$1;)V

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1002(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/music/activity/MediaPlaybackActivity$c;)Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    .line 256
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->b:Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcn/nubia/music/activity/MediaPlaybackActivity$11;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->start()V

    .line 258
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity$11$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
