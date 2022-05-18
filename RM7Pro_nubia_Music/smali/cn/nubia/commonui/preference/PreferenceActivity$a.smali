.class Lcn/nubia/commonui/preference/PreferenceActivity$a;
.super Landroid/widget/ArrayAdapter;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/preference/PreferenceActivity$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/commonui/preference/PreferenceActivity$Header;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 277
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$a;->a:Landroid/view/LayoutInflater;

    .line 278
    iput p3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$a;->b:I

    .line 279
    iput-boolean p4, p0, Lcn/nubia/commonui/preference/PreferenceActivity$a;->c:Z

    .line 280
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 287
    if-nez p2, :cond_0

    .line 288
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$a;->a:Landroid/view/LayoutInflater;

    iget v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity$a;->b:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 289
    new-instance v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;-><init>(Lcn/nubia/commonui/preference/PreferenceActivity$1;)V

    .line 291
    const-string v0, "id"

    const-string v2, "icon"

    invoke-static {v0, v2}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;->a:Landroid/widget/ImageView;

    .line 293
    const-string v0, "id"

    const-string v2, "title"

    invoke-static {v0, v2}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;->b:Landroid/widget/TextView;

    .line 295
    const-string v0, "id"

    const-string v2, "summary"

    invoke-static {v0, v2}, Lcn/nubia/commonui/ReflectUtils;->getFromInternalR(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;->c:Landroid/widget/TextView;

    .line 296
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 303
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/PreferenceActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    .line 304
    iget-boolean v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity$a;->c:Z

    if-eqz v2, :cond_2

    .line 305
    iget v2, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->iconRes:I

    if-nez v2, :cond_1

    .line 306
    iget-object v2, v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    :goto_1
    iget-object v2, v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/PreferenceActivity$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 317
    iget-object v2, v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v1, v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :goto_2
    return-object p2

    .line 299
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;

    move-object v1, v0

    goto :goto_0

    .line 308
    :cond_1
    iget-object v2, v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v2, v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;->a:Landroid/widget/ImageView;

    iget v3, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 312
    :cond_2
    iget-object v2, v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;->a:Landroid/widget/ImageView;

    iget v3, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 320
    :cond_3
    iget-object v0, v1, Lcn/nubia/commonui/preference/PreferenceActivity$a$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
