.class Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;
.super Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
.source "SpinnerCompat.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 983
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;->a:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    .line 984
    invoke-direct {p0, p2, p3, p4}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 986
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;->setAnchorView(Landroid/view/View;)V

    .line 987
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;->setModal(Z)V

    .line 988
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;->setPromptPosition(I)V

    .line 990
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)V

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1001
    return-void
.end method

.method static synthetic a(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;->c:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;->b:Ljava/lang/CharSequence;

    .line 1016
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 1005
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1006
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$c;->c:Landroid/widget/ListAdapter;

    .line 1007
    return-void
.end method
