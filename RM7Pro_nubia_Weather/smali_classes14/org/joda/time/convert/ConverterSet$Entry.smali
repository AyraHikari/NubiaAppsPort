.class Lorg/joda/time/convert/ConverterSet$Entry;
.super Ljava/lang/Object;
.source "ConverterSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/convert/ConverterSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field final iConverter:Lorg/joda/time/convert/Converter;

.field final iType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lorg/joda/time/convert/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/joda/time/convert/Converter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lorg/joda/time/convert/ConverterSet$Entry;->iType:Ljava/lang/Class;

    .line 324
    iput-object p2, p0, Lorg/joda/time/convert/ConverterSet$Entry;->iConverter:Lorg/joda/time/convert/Converter;

    .line 325
    return-void
.end method
