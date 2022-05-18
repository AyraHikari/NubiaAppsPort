.class public abstract Lorg/javia/arity/ContextFunction;
.super Lorg/javia/arity/Function;
.source "ContextFunction.java"


# static fields
.field private static final NO_ARGS:[D

.field private static final NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

.field private static context:Lorg/javia/arity/EvalContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4
    new-instance v0, Lorg/javia/arity/EvalContext;

    invoke-direct {v0}, Lorg/javia/arity/EvalContext;-><init>()V

    sput-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [D

    sput-object v1, Lorg/javia/arity/ContextFunction;->NO_ARGS:[D

    .line 6
    new-array v0, v0, [Lorg/javia/arity/Complex;

    sput-object v0, Lorg/javia/arity/ContextFunction;->NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()D
    .locals 2

    .line 37
    sget-object v0, Lorg/javia/arity/ContextFunction;->NO_ARGS:[D

    invoke-virtual {p0, v0}, Lorg/javia/arity/ContextFunction;->eval([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public eval(D)D
    .locals 2

    .line 42
    sget-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, p2, v1}, Lorg/javia/arity/ContextFunction;->eval(DLorg/javia/arity/EvalContext;)D

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public eval(DD)D
    .locals 7

    .line 49
    sget-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v6, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/javia/arity/ContextFunction;->eval(DDLorg/javia/arity/EvalContext;)D

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public eval(DDLorg/javia/arity/EvalContext;)D
    .locals 2

    .line 68
    iget-object v0, p5, Lorg/javia/arity/EvalContext;->args2:[D

    const/4 v1, 0x0

    .line 69
    aput-wide p1, v0, v1

    const/4 p1, 0x1

    .line 70
    aput-wide p3, v0, p1

    .line 71
    invoke-virtual {p0, v0, p5}, Lorg/javia/arity/ContextFunction;->eval([DLorg/javia/arity/EvalContext;)D

    move-result-wide p0

    return-wide p0
.end method

.method public eval(DLorg/javia/arity/EvalContext;)D
    .locals 2

    .line 62
    iget-object v0, p3, Lorg/javia/arity/EvalContext;->args1:[D

    const/4 v1, 0x0

    .line 63
    aput-wide p1, v0, v1

    .line 64
    invoke-virtual {p0, v0, p3}, Lorg/javia/arity/ContextFunction;->eval([DLorg/javia/arity/EvalContext;)D

    move-result-wide p0

    return-wide p0
.end method

.method public eval([D)D
    .locals 2

    .line 56
    sget-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, v1}, Lorg/javia/arity/ContextFunction;->eval([DLorg/javia/arity/EvalContext;)D

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract eval([DLorg/javia/arity/EvalContext;)D
.end method

.method public eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 2

    .line 81
    sget-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, v1}, Lorg/javia/arity/ContextFunction;->eval(Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 2

    .line 88
    sget-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, p2, v1}, Lorg/javia/arity/ContextFunction;->eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;
    .locals 2

    .line 107
    iget-object v0, p3, Lorg/javia/arity/EvalContext;->args2c:[Lorg/javia/arity/Complex;

    const/4 v1, 0x0

    .line 108
    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 109
    aput-object p2, v0, p1

    .line 110
    invoke-virtual {p0, v0, p3}, Lorg/javia/arity/ContextFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public eval(Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;
    .locals 2

    .line 101
    iget-object v0, p2, Lorg/javia/arity/EvalContext;->args1c:[Lorg/javia/arity/Complex;

    const/4 v1, 0x0

    .line 102
    aput-object p1, v0, v1

    .line 103
    invoke-virtual {p0, v0, p2}, Lorg/javia/arity/ContextFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public eval([Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 2

    .line 95
    sget-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, v1}, Lorg/javia/arity/ContextFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;
.end method

.method public evalComplex()Lorg/javia/arity/Complex;
    .locals 1

    .line 76
    sget-object v0, Lorg/javia/arity/ContextFunction;->NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

    invoke-virtual {p0, v0}, Lorg/javia/arity/ContextFunction;->eval([Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method toComplex([DLorg/javia/arity/EvalContext;)[Lorg/javia/arity/Complex;
    .locals 5

    .line 13
    array-length p0, p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 27
    array-length p0, p1

    new-array p0, p0, [Lorg/javia/arity/Complex;

    goto :goto_0

    .line 22
    :pswitch_0
    iget-object p0, p2, Lorg/javia/arity/EvalContext;->args2c:[Lorg/javia/arity/Complex;

    .line 23
    aget-object p2, p0, v2

    aget-wide v2, p1, v2

    invoke-virtual {p2, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    const/4 p2, 0x1

    .line 24
    aget-object v2, p0, p2

    aget-wide p1, p1, p2

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_1

    .line 18
    :pswitch_1
    iget-object p0, p2, Lorg/javia/arity/EvalContext;->args1c:[Lorg/javia/arity/Complex;

    .line 19
    aget-object p2, p0, v2

    aget-wide v2, p1, v2

    invoke-virtual {p2, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_1

    .line 15
    :pswitch_2
    sget-object p0, Lorg/javia/arity/ContextFunction;->NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

    goto :goto_1

    .line 28
    :goto_0
    array-length p2, p1

    if-ge v2, p2, :cond_0

    .line 29
    new-instance p2, Lorg/javia/arity/Complex;

    aget-wide v3, p1, v2

    invoke-direct {p2, v3, v4, v0, v1}, Lorg/javia/arity/Complex;-><init>(DD)V

    aput-object p2, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
