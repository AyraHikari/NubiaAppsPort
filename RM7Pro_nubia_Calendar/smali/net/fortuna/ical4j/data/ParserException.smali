.class public Lnet/fortuna/ical4j/data/ParserException;
.super Ljava/lang/Exception;
.source "ParserException.java"


# static fields
.field private static final ERROR_MESSAGE_PATTERN:Ljava/lang/String; = "Error at line {0}:"

.field private static final serialVersionUID:J = 0x54e2af88d2f160a6L


# instance fields
.field private lineNo:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "lineNo"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 56
    iput p1, p0, Lnet/fortuna/ical4j/data/ParserException;->lineNo:I

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNo"    # I

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error at line {0}:"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 66
    iput p2, p0, Lnet/fortuna/ical4j/data/ParserException;->lineNo:I

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNo"    # I
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error at line {0}:"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    iput p2, p0, Lnet/fortuna/ical4j/data/ParserException;->lineNo:I

    .line 80
    return-void
.end method


# virtual methods
.method public final getLineNo()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lnet/fortuna/ical4j/data/ParserException;->lineNo:I

    return v0
.end method
