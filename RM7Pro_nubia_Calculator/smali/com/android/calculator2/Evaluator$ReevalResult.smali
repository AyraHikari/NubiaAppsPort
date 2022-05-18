.class Lcom/android/calculator2/Evaluator$ReevalResult;
.super Ljava/lang/Object;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReevalResult"
.end annotation


# instance fields
.field public final newResultString:Ljava/lang/String;

.field public final newResultStringOffset:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p1, p0, Lcom/android/calculator2/Evaluator$ReevalResult;->newResultString:Ljava/lang/String;

    .line 745
    iput p2, p0, Lcom/android/calculator2/Evaluator$ReevalResult;->newResultStringOffset:I

    return-void
.end method
