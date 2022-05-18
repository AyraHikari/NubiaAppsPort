.class Lorg/javia/arity/SizeCase;
.super Ljava/lang/Object;
.source "UnitTest.java"


# instance fields
.field public res:Ljava/lang/String;

.field public size:I

.field public val:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p1, p0, Lorg/javia/arity/SizeCase;->size:I

    .line 266
    iput-object p2, p0, Lorg/javia/arity/SizeCase;->val:Ljava/lang/String;

    .line 267
    iput-object p3, p0, Lorg/javia/arity/SizeCase;->res:Ljava/lang/String;

    return-void
.end method
