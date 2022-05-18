.class public Lorg/apache/commons/logging/LogConfigurationException;
.super Ljava/lang/RuntimeException;
.source "LogConfigurationException.java"


# instance fields
.field protected cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/logging/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/logging/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " (Caused by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/logging/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 77
    iput-object p2, p0, Lorg/apache/commons/logging/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/commons/logging/LogConfigurationException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
