.class public Lorg/apache/http/impl/EnglishReasonPhraseCatalog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/ReasonPhraseCatalog;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/EnglishReasonPhraseCatalog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getReason(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
