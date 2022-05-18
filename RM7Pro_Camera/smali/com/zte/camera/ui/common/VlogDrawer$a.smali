.class public Lcom/zte/camera/ui/common/VlogDrawer$a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/common/VlogDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/ui/common/VlogDrawer$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/zte/camera/ui/common/VlogDrawer$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/ui/common/VlogDrawer;


# direct methods
.method constructor <init>(Lcom/zte/camera/ui/common/VlogDrawer;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;ZLandroid/view/View;)V
    .locals 1

    .line 153
    invoke-virtual {p1}, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->e()I

    move-result p1

    if-nez p2, :cond_0

    .line 155
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->d(Lcom/zte/camera/ui/common/VlogDrawer;I)I

    .line 156
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->e(Lcom/zte/camera/ui/common/VlogDrawer;I)V

    .line 157
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2}, Lcom/zte/camera/ui/common/VlogDrawer;->f(Lcom/zte/camera/ui/common/VlogDrawer;)Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

    move-result-object p2

    iget-object p3, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p3}, Lcom/zte/camera/ui/common/VlogDrawer;->h(Lcom/zte/camera/ui/common/VlogDrawer;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$u;-><init>()V

    invoke-virtual {p2, p3, v0, p1}, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;I)V

    .line 158
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogDrawer$a;->c()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p1}, Lcom/zte/camera/ui/common/VlogDrawer;->c(Lcom/zte/camera/ui/common/VlogDrawer;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer;Z)Z

    .line 161
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p1}, Lcom/zte/camera/ui/common/VlogDrawer;->f(Lcom/zte/camera/ui/common/VlogDrawer;)Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

    move-result-object p1

    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2}, Lcom/zte/camera/ui/common/VlogDrawer;->c(Lcom/zte/camera/ui/common/VlogDrawer;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->c(Z)V

    .line 162
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p1}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/zte/camera/ui/common/VlogDrawer;->c(Lcom/zte/camera/ui/common/VlogDrawer;I)V

    .line 163
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p1}, Lcom/zte/camera/ui/common/VlogDrawer;->g(Lcom/zte/camera/ui/common/VlogDrawer;)Landroidx/recyclerview/widget/j;

    move-result-object p1

    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2}, Lcom/zte/camera/ui/common/VlogDrawer;->h(Lcom/zte/camera/ui/common/VlogDrawer;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 164
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogDrawer$a;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$IKZNNCjhhhYwYpNA_VtRLC-0kEw(Lcom/zte/camera/ui/common/VlogDrawer$a;Lcom/zte/camera/ui/common/VlogDrawer$a$a;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/camera/ui/common/VlogDrawer$a;->a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;ZLandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v0}, Lcom/zte/camera/ui/common/VlogDrawer;->e(Lcom/zte/camera/ui/common/VlogDrawer;)Lcom/android/preference/IconListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/zte/camera/ui/common/VlogDrawer$a;->c(Landroid/view/ViewGroup;I)Lcom/zte/camera/ui/common/VlogDrawer$a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 0

    .line 127
    check-cast p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;

    invoke-virtual {p0, p1, p2}, Lcom/zte/camera/ui/common/VlogDrawer$a;->a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V

    return-void
.end method

.method public a(Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V
    .locals 11

    .line 140
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v0}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 141
    :goto_0
    iget-object v3, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v3, p2}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer;I)[F

    move-result-object v3

    .line 142
    array-length v3, v3

    .line 143
    iget-object v4, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v4, p2}, Lcom/zte/camera/ui/common/VlogDrawer;->b(Lcom/zte/camera/ui/common/VlogDrawer;I)I

    move-result v4

    .line 144
    iget-object v5, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->w:Landroid/view/TextureView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/TextureView;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v5, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->u:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v6}, Lcom/zte/camera/ui/common/VlogDrawer;->b(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/nubia/a/a$h;->n:I

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v5, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v5}, Lcom/zte/camera/ui/common/VlogDrawer;->c(Lcom/zte/camera/ui/common/VlogDrawer;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    iget-object v5, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->s:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v6}, Lcom/zte/camera/ui/common/VlogDrawer;->b(Lcom/zte/camera/ui/common/VlogDrawer;)Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/nubia/a/a$h;->o:I

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v10}, Lcom/zte/camera/ui/common/VlogDrawer;->d(Lcom/zte/camera/ui/common/VlogDrawer;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, p2

    aput-object v10, v9, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v8

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 149
    :cond_1
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->s:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v3}, Lcom/zte/camera/ui/common/VlogDrawer;->d(Lcom/zte/camera/ui/common/VlogDrawer;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_1
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->a:Landroid/view/View;

    new-instance v3, Lcom/zte/camera/ui/common/-$$Lambda$VlogDrawer$a$IKZNNCjhhhYwYpNA_VtRLC-0kEw;

    invoke-direct {v3, p0, p1, v0}, Lcom/zte/camera/ui/common/-$$Lambda$VlogDrawer$a$IKZNNCjhhhYwYpNA_VtRLC-0kEw;-><init>(Lcom/zte/camera/ui/common/VlogDrawer$a;Lcom/zte/camera/ui/common/VlogDrawer$a$a;Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->r:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v3}, Lcom/zte/camera/ui/common/VlogDrawer;->e(Lcom/zte/camera/ui/common/VlogDrawer;)Lcom/android/preference/IconListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/preference/IconListPreference;->f()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->x:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v3}, Lcom/zte/camera/ui/common/VlogDrawer;->e(Lcom/zte/camera/ui/common/VlogDrawer;)Lcom/android/preference/IconListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/preference/IconListPreference;->g()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->x:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v3}, Lcom/zte/camera/ui/common/VlogDrawer;->c(Lcom/zte/camera/ui/common/VlogDrawer;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_3

    .line 172
    iget-object v1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v1}, Lcom/zte/camera/ui/common/VlogDrawer;->c(Lcom/zte/camera/ui/common/VlogDrawer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v1, p1, p2}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer;Lcom/zte/camera/ui/common/VlogDrawer$a$a;I)V

    .line 176
    :cond_3
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2, p1}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer;Lcom/zte/camera/ui/common/VlogDrawer$a$a;)V

    if-eqz v0, :cond_4

    .line 178
    iget-object p2, p0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p2}, Lcom/zte/camera/ui/common/VlogDrawer;->c(Lcom/zte/camera/ui/common/VlogDrawer;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 179
    iget-object p2, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->t:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object p1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->v:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 182
    :cond_4
    iget-object p2, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->t:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object p1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->v:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/zte/camera/ui/common/VlogDrawer$a$a;
    .locals 2

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/nubia/a/a$f;->g:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 135
    new-instance p2, Lcom/zte/camera/ui/common/VlogDrawer$a$a;

    invoke-direct {p2, p0, p1}, Lcom/zte/camera/ui/common/VlogDrawer$a$a;-><init>(Lcom/zte/camera/ui/common/VlogDrawer$a;Landroid/view/View;)V

    return-object p2
.end method

.method public d()V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogDrawer$a;->c()V

    return-void
.end method
