.class Lcn/nubia/improve/share/ShareMoreActivity$ShareMoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/share/ShareMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareMoreAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/share/ShareMoreActivity;


# direct methods
.method constructor <init>(Lcn/nubia/improve/share/ShareMoreActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcn/nubia/improve/share/ShareMoreActivity$ShareMoreAdapter;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity$ShareMoreAdapter;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {v0}, Lcn/nubia/improve/share/ShareMoreActivity;->access$900(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 142
    iget-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity$ShareMoreAdapter;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {v0}, Lcn/nubia/improve/share/ShareMoreActivity;->access$900(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_0

    .line 154
    new-instance p2, Lcn/nubia/improve/share/ShareMoreActivity$ViewHolder;

    iget-object p3, p0, Lcn/nubia/improve/share/ShareMoreActivity$ShareMoreAdapter;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-direct {p2, p3}, Lcn/nubia/improve/share/ShareMoreActivity$ViewHolder;-><init>(Lcn/nubia/improve/share/ShareMoreActivity;)V

    .line 155
    iget-object p3, p0, Lcn/nubia/improve/share/ShareMoreActivity$ShareMoreAdapter;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {p3}, Lcn/nubia/improve/share/ShareMoreActivity;->access$300(Lcn/nubia/improve/share/ShareMoreActivity;)Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c003e

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0900b7

    .line 158
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcn/nubia/improve/share/ShareMoreActivity$ViewHolder;->tvName:Landroid/widget/TextView;

    const v0, 0x7f0900b6

    .line 160
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcn/nubia/improve/share/ShareMoreActivity$ViewHolder;->imgLog:Landroid/widget/ImageView;

    .line 161
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/improve/share/ShareMoreActivity$ViewHolder;

    move-object v7, p3

    move-object p3, p2

    move-object p2, v7

    .line 166
    :goto_0
    new-instance v6, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;

    iget-object v0, p0, Lcn/nubia/improve/share/ShareMoreActivity$ShareMoreAdapter;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    invoke-static {v0}, Lcn/nubia/improve/share/ShareMoreActivity;->access$300(Lcn/nubia/improve/share/ShareMoreActivity;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p2, Lcn/nubia/improve/share/ShareMoreActivity$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v3, p2, Lcn/nubia/improve/share/ShareMoreActivity$ViewHolder;->imgLog:Landroid/widget/ImageView;

    iget-object p2, p0, Lcn/nubia/improve/share/ShareMoreActivity$ShareMoreAdapter;->this$0:Lcn/nubia/improve/share/ShareMoreActivity;

    .line 167
    invoke-static {p2}, Lcn/nubia/improve/share/ShareMoreActivity;->access$900(Lcn/nubia/improve/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/content/pm/ResolveInfo;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/content/pm/ResolveInfo;Z)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 168
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p2, v0

    .line 167
    invoke-virtual {v6, p1, p2}, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p3
.end method
