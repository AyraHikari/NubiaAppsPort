.class public Lcn/nubia/improve/slideshow/SlideShowEffectChooser;
.super Ljava/lang/Object;
.source "SlideShowEffectChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/slideshow/SlideShowEffectChooser$EffectChooserListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideShowEffectChooset"


# instance fields
.field private arrListEffctNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mArrayListTextView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcn/nubia/improve/slideshow/SlideShowEffectChooser$EffectChooserListener;

.field private mSaveEffectName:Ljava/lang/String;

.field private scrollView:Landroid/view/ViewGroup;

.field private tvCurrentSelct:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V
    .locals 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 35
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 36
    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcn/nubia/improve/slideshow/SlideShowSetting;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getEffectName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mSaveEffectName:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->initEffNames()V

    const p1, 0x7f0900c1

    .line 40
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->scrollView:Landroid/view/ViewGroup;

    .line 41
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->scrollView:Landroid/view/ViewGroup;

    const v1, 0x7f0c0043

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x7f090172

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09016f

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090170

    .line 48
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09016e

    .line 49
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090171

    .line 50
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 51
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mArrayListTextView:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mArrayListTextView:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mArrayListTextView:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mArrayListTextView:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mArrayListTextView:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 58
    :goto_0
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mArrayListTextView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mArrayListTextView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->setCurrentSlectTv(Landroid/view/ViewGroup;)V

    .line 65
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->scrollView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->scrollView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method private initEffNames()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->arrListEffctNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->arrListEffctNames:Ljava/util/ArrayList;

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->arrListEffctNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->arrListEffctNames:Ljava/util/ArrayList;

    const-string v1, "FadeOut"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->arrListEffctNames:Ljava/util/ArrayList;

    const-string v1, "Flow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->arrListEffctNames:Ljava/util/ArrayList;

    const-string v1, "Cube"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->arrListEffctNames:Ljava/util/ArrayList;

    const-string v1, "Stack"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->arrListEffctNames:Ljava/util/ArrayList;

    const-string v1, "Turn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setCurrentSlectTv(Landroid/view/ViewGroup;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->arrListEffctNames:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mSaveEffectName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mArrayListTextView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->tvCurrentSelct:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private setTvListener(Landroid/widget/TextView;I)V
    .locals 0

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getSelectEffectName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mSaveEffectName:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 115
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->tvCurrentSelct:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 118
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->tvCurrentSelct:Landroid/widget/TextView;

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 121
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->arrListEffctNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mSaveEffectName:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->CreateFiltering(Ljava/lang/String;)Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mListener:Lcn/nubia/improve/slideshow/SlideShowEffectChooser$EffectChooserListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 124
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mSaveEffectName:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcn/nubia/improve/slideshow/SlideShowEffectChooser$EffectChooserListener;->onChangeEffect(Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setChooserListener(Lcn/nubia/improve/slideshow/SlideShowEffectChooser$EffectChooserListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->mListener:Lcn/nubia/improve/slideshow/SlideShowEffectChooser$EffectChooserListener;

    return-void
.end method
