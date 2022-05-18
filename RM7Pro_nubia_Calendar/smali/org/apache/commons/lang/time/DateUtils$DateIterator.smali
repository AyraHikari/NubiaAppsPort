.class Lorg/apache/commons/lang/time/DateUtils$DateIterator;
.super Ljava/lang/Object;
.source "DateUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/time/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DateIterator"
.end annotation


# instance fields
.field private final endFinal:Ljava/util/Calendar;

.field private final spot:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "startFinal"    # Ljava/util/Calendar;
    .param p2, "endFinal"    # Ljava/util/Calendar;

    .prologue
    .line 1872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1873
    iput-object p2, p0, Lorg/apache/commons/lang/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    .line 1874
    iput-object p1, p0, Lorg/apache/commons/lang/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    .line 1875
    iget-object v0, p0, Lorg/apache/commons/lang/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1876
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 1884
    iget-object v0, p0, Lorg/apache/commons/lang/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/apache/commons/lang/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1893
    iget-object v0, p0, Lorg/apache/commons/lang/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/apache/commons/lang/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1896
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1897
    iget-object v0, p0, Lorg/apache/commons/lang/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1907
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
