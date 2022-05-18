.class public abstract Lnet/fortuna/ical4j/data/AbstractOutputter;
.super Ljava/lang/Object;
.source "AbstractOutputter.java"


# static fields
.field protected static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field protected foldLength:I

.field private validating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/data/AbstractOutputter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/data/AbstractOutputter;-><init>(Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "validating"    # Z

    .prologue
    .line 75
    const-string v0, "ical4j.compatibility.outlook"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    :goto_0
    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/data/AbstractOutputter;-><init>(ZI)V

    .line 78
    return-void

    .line 75
    :cond_0
    const/16 v0, 0x49

    goto :goto_0
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "validating"    # Z
    .param p2, "foldLength"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean p1, p0, Lnet/fortuna/ical4j/data/AbstractOutputter;->validating:Z

    .line 86
    iput p2, p0, Lnet/fortuna/ical4j/data/AbstractOutputter;->foldLength:I

    .line 87
    return-void
.end method


# virtual methods
.method public final isValidating()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lnet/fortuna/ical4j/data/AbstractOutputter;->validating:Z

    return v0
.end method

.method public final setValidating(Z)V
    .locals 0
    .param p1, "validating"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lnet/fortuna/ical4j/data/AbstractOutputter;->validating:Z

    .line 101
    return-void
.end method
