.class Lcn/nubia/camera/w/c$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/w/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/w/c;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/camera/w/c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/camera/w/d$a;",
            ">;)V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x2

    .line 102
    iput p1, p0, Lcn/nubia/camera/w/c$b;->b:I

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lcn/nubia/camera/w/c$b;->c:I

    const/4 p1, 0x1

    .line 104
    iput p1, p0, Lcn/nubia/camera/w/c$b;->d:I

    .line 109
    iput-object p2, p0, Lcn/nubia/camera/w/c$b;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/w/c$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/w/c$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 176
    iget-object v0, p0, Lcn/nubia/camera/w/c$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 114
    invoke-virtual {p0, p1}, Lcn/nubia/camera/w/c$b;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_5

    if-nez p2, :cond_0

    .line 116
    iget-object p2, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {p2}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c005c

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f090195

    .line 118
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/w/c$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->b()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090196

    .line 120
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    iget-object v2, p0, Lcn/nubia/camera/w/c$b;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v2}, Lcn/nubia/camera/w/d$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {v2}, Lcn/nubia/camera/w/c;->b(Lcn/nubia/camera/w/c;)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 123
    iget-object v2, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {v2}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object p3, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {p3}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-virtual {v2, p1}, Lcn/nubia/camera/w/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {v2}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object p3, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {p3}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f06002a

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {v2}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object p3, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {p3}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const p3, 0x7f090194

    .line 134
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {v0, p1}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {v0}, Lcn/nubia/camera/w/c;->b(Lcn/nubia/camera/w/c;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const p1, 0x7f080114

    goto :goto_1

    :cond_3
    const p1, 0x7f080113

    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x4

    .line 139
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    :goto_2
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget-object p3, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {p3}, Lcn/nubia/camera/w/c;->c(Lcn/nubia/camera/w/c;)I

    move-result p3

    iget-object v0, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    .line 143
    invoke-static {v0}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p1, p3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 144
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f090197

    .line 145
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 147
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    .line 148
    invoke-static {v0}, Lcn/nubia/camera/w/c;->c(Lcn/nubia/camera/w/c;)I

    move-result v0

    iget-object v2, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {v2}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 149
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    .line 153
    iget-object p1, p0, Lcn/nubia/camera/w/c$b;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c005d

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_6
    :goto_3
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
