.class Lcom/android/calculator2/Evaluator$SetSavedWhenDoneListener;
.super Lcom/android/calculator2/Evaluator$SetWhenDoneListener;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSavedWhenDoneListener"
.end annotation


# instance fields
.field final mIndex:J

.field final synthetic this$0:Lcom/android/calculator2/Evaluator;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Evaluator;J)V
    .locals 1

    .line 1833
    iput-object p1, p0, Lcom/android/calculator2/Evaluator$SetSavedWhenDoneListener;->this$0:Lcom/android/calculator2/Evaluator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/Evaluator$SetWhenDoneListener;-><init>(Lcom/android/calculator2/Evaluator;Lcom/android/calculator2/Evaluator$1;)V

    .line 1834
    iput-wide p2, p0, Lcom/android/calculator2/Evaluator$SetSavedWhenDoneListener;->mIndex:J

    return-void
.end method


# virtual methods
.method setNow()V
    .locals 3

    .line 1838
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$SetSavedWhenDoneListener;->this$0:Lcom/android/calculator2/Evaluator;

    iget-wide v1, p0, Lcom/android/calculator2/Evaluator$SetSavedWhenDoneListener;->mIndex:J

    invoke-static {v0, v1, v2}, Lcom/android/calculator2/Evaluator;->access$1402(Lcom/android/calculator2/Evaluator;J)J

    return-void
.end method
