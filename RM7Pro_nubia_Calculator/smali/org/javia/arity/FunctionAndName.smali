.class public Lorg/javia/arity/FunctionAndName;
.super Ljava/lang/Object;
.source "FunctionAndName.java"


# instance fields
.field public function:Lorg/javia/arity/Function;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/javia/arity/Function;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/javia/arity/FunctionAndName;->function:Lorg/javia/arity/Function;

    .line 31
    iput-object p2, p0, Lorg/javia/arity/FunctionAndName;->name:Ljava/lang/String;

    return-void
.end method
