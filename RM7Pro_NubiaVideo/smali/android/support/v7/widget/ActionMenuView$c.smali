.class public Landroid/support/v7/widget/ActionMenuView$c;
.super Landroid/support/v7/widget/z$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public d:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public e:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public f:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public g:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field h:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/z$a;-><init>(II)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/z$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/ActionMenuView$c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/support/v7/widget/z$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-boolean p1, p1, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView$c;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/z$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
