.class public final Lcom/google/zxing/view/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final viewfinderView:Lcom/google/zxing/view/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/google/zxing/view/ViewfinderView;)V
    .locals 0
    .param p1, "viewfinderView"    # Lcom/google/zxing/view/ViewfinderView;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/zxing/view/ViewfinderResultPointCallback;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    .line 16
    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderResultPointCallback;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/google/zxing/view/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 20
    return-void
.end method
