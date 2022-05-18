.class Lcom/android/captureCamera/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/captureCamera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/captureCamera/e;

.field private b:Landroid/icu/text/SimpleDateFormat;

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>(Lcom/android/captureCamera/e;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/captureCamera/e$a;->a:Lcom/android/captureCamera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance p1, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {p1, p2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/captureCamera/e$a;->b:Landroid/icu/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 7

    .line 110
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 111
    iget-object v1, p0, Lcom/android/captureCamera/e$a;->b:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 115
    div-long v3, p1, v1

    iget-wide v5, p0, Lcom/android/captureCamera/e$a;->c:J

    div-long/2addr v5, v1

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 116
    iget p1, p0, Lcom/android/captureCamera/e$a;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/captureCamera/e$a;->d:I

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/captureCamera/e$a;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_0
    iput-wide p1, p0, Lcom/android/captureCamera/e$a;->c:J

    const/4 p1, 0x0

    .line 120
    iput p1, p0, Lcom/android/captureCamera/e$a;->d:I

    :goto_0
    return-object v0
.end method
