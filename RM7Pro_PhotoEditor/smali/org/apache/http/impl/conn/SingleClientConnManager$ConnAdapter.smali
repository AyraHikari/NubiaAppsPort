.class public Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
.super Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/conn/SingleClientConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;


# direct methods
.method protected constructor <init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
