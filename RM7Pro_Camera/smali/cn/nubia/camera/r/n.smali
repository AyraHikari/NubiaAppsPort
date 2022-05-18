.class public Lcn/nubia/camera/r/n;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/r/n$b;,
        Lcn/nubia/camera/r/n$a;,
        Lcn/nubia/camera/r/n$c;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/n$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/m;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcn/nubia/algorithm/camera/FreezeVideoJni;

.field f:Lcn/nubia/camera/r/p;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcn/nubia/algorithm/camera/FreezeVideoJni;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/n;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcn/nubia/camera/r/n;->b:Z

    .line 21
    iput-boolean v0, p0, Lcn/nubia/camera/r/n;->c:Z

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/r/n;->d:Ljava/util/ArrayList;

    const/4 v1, 0x4

    .line 24
    iput v1, p0, Lcn/nubia/camera/r/n;->g:I

    .line 26
    iput v0, p0, Lcn/nubia/camera/r/n;->h:I

    iput v0, p0, Lcn/nubia/camera/r/n;->i:I

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/camera/r/n;->j:Ljava/lang/Boolean;

    .line 30
    iput-object p1, p0, Lcn/nubia/camera/r/n;->e:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    .line 31
    new-instance p1, Lcn/nubia/camera/r/p;

    iget v0, p0, Lcn/nubia/camera/r/n;->g:I

    invoke-direct {p1, v0}, Lcn/nubia/camera/r/p;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/camera/r/n;->f:Lcn/nubia/camera/r/p;

    .line 32
    invoke-virtual {p1}, Lcn/nubia/camera/r/p;->a()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/n;)I
    .locals 2

    .line 17
    iget v0, p0, Lcn/nubia/camera/r/n;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/r/n;->h:I

    return v0
.end method

.method private a()V
    .locals 4

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcn/nubia/camera/r/m;

    .line 143
    iget-object v2, p0, Lcn/nubia/camera/r/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 145
    aget-object v3, v1, v2

    .line 146
    invoke-interface {v3}, Lcn/nubia/camera/r/m;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 144
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcn/nubia/camera/r/n$b;)V
    .locals 4

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcn/nubia/camera/r/m;

    .line 154
    iget-object v2, p0, Lcn/nubia/camera/r/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 155
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 156
    aget-object v3, v1, v2

    .line 157
    invoke-interface {v3, p1}, Lcn/nubia/camera/r/m;->a(Lcn/nubia/camera/r/n$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 155
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcn/nubia/camera/r/n;Lcn/nubia/camera/r/n$b;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/n;->a(Lcn/nubia/camera/r/n$b;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcn/nubia/camera/r/m;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcn/nubia/camera/r/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 45
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/camera/r/d$b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/r/n;->j:Ljava/lang/Boolean;

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized a([Lcn/nubia/camera/r/n$a;)V
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/n;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget p1, p0, Lcn/nubia/camera/r/n;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/camera/r/n;->i:I

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 52
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/r/n;->b:Z

    .line 53
    iput-boolean p1, p0, Lcn/nubia/camera/r/n;->c:Z

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 3

    const-string v0, "RegistrationThread"

    const-string v1, "start"

    .line 70
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/r/n;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/r/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/r/n;->c:Z

    if-nez v0, :cond_2

    .line 72
    :cond_0
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/r/n;->j:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 75
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 77
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 79
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 82
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/r/n;->f:Lcn/nubia/camera/r/p;

    iget-boolean v2, p0, Lcn/nubia/camera/r/n;->c:Z

    invoke-virtual {v0, v2}, Lcn/nubia/camera/r/p;->a(Z)V

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/r/n;->f:Lcn/nubia/camera/r/p;

    invoke-virtual {v0}, Lcn/nubia/camera/r/p;->b()V

    .line 107
    invoke-direct {p0}, Lcn/nubia/camera/r/n;->a()V

    .line 108
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/r/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/r/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/r/n$a;

    iget-object v0, v0, Lcn/nubia/camera/r/n$a;->a:Lcn/nubia/algorithm/utils/a;

    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    goto :goto_2

    :cond_3
    const-string v0, "RegistrationThread"

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end. receive/registration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/r/n;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/r/n;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    monitor-enter p0

    .line 87
    :try_start_4
    iget-object v0, p0, Lcn/nubia/camera/r/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_5

    .line 89
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 91
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 93
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    .line 95
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/r/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/r/n$a;

    .line 96
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    iget v1, v0, Lcn/nubia/camera/r/n$a;->d:I

    if-nez v1, :cond_6

    .line 99
    new-instance v1, Lcn/nubia/camera/r/n$c;

    invoke-direct {v1, p0, v0}, Lcn/nubia/camera/r/n$c;-><init>(Lcn/nubia/camera/r/n;Lcn/nubia/camera/r/n$a;)V

    invoke-virtual {v1}, Lcn/nubia/camera/r/n$c;->run()V

    goto/16 :goto_0

    .line 102
    :cond_6
    iget-object v1, p0, Lcn/nubia/camera/r/n;->f:Lcn/nubia/camera/r/p;

    new-instance v2, Lcn/nubia/camera/r/n$c;

    invoke-direct {v2, p0, v0}, Lcn/nubia/camera/r/n$c;-><init>(Lcn/nubia/camera/r/n;Lcn/nubia/camera/r/n$a;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/r/p;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 96
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 84
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method
