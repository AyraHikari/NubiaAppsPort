.class public Lcom/zte/mifavor/widget/OverScrollerMFV;
.super Landroid/widget/OverScroller;
.source "OverScrollerMFV.java"


# static fields
.field private static final SOLVER_TIMESTEP_SEC:D = 0.001

.field private static mIsZteApp:Z


# instance fields
.field public mOverMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/zte/mifavor/widget/OverScrollerMFV;->mOverMode:I

    return-void
.end method
