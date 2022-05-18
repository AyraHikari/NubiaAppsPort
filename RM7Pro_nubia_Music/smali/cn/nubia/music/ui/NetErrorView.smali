.class public Lcn/nubia/music/ui/NetErrorView;
.super Landroid/widget/LinearLayout;
.source "NetErrorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/NetErrorView$TextClickListener;,
        Lcn/nubia/music/ui/NetErrorView$RefreshListener;
    }
.end annotation


# instance fields
.field private mRefresh:Lcn/nubia/music/ui/NetErrorView$RefreshListener;

.field private mRefreshBtn:Landroid/widget/TextView;

.field private mRefreshListener:Landroid/view/View$OnClickListener;

.field private mTextClickListener:Lcn/nubia/music/ui/NetErrorView$TextClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/ui/NetErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/ui/NetErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Lcn/nubia/music/ui/NetErrorView$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/NetErrorView$1;-><init>(Lcn/nubia/music/ui/NetErrorView;)V

    iput-object v0, p0, Lcn/nubia/music/ui/NetErrorView;->mRefreshListener:Landroid/view/View$OnClickListener;

    .line 32
    const-string v0, "layout_inflater"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    const v1, 0x7f030040

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    invoke-direct {p0}, Lcn/nubia/music/ui/NetErrorView;->initView()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/ui/NetErrorView;)Lcn/nubia/music/ui/NetErrorView$RefreshListener;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/music/ui/NetErrorView;->mRefresh:Lcn/nubia/music/ui/NetErrorView$RefreshListener;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 40
    const v0, 0x7f1000e4

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/NetErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/ui/NetErrorView;->mRefreshBtn:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcn/nubia/music/ui/NetErrorView;->mRefreshBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/ui/NetErrorView;->mRefreshListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public setRefreshListener(Lcn/nubia/music/ui/NetErrorView$RefreshListener;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcn/nubia/music/ui/NetErrorView;->mRefresh:Lcn/nubia/music/ui/NetErrorView$RefreshListener;

    .line 48
    return-void
.end method

.method public setTextClickListener(Lcn/nubia/music/ui/NetErrorView$TextClickListener;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/music/ui/NetErrorView;->mTextClickListener:Lcn/nubia/music/ui/NetErrorView$TextClickListener;

    .line 52
    return-void
.end method
