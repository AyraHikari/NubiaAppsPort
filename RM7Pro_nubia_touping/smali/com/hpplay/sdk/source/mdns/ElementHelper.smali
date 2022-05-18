.class public Lcom/hpplay/sdk/source/mdns/ElementHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;",
            ">;"
        }
    .end annotation
.end field

.field private clazz:Ljava/lang/Class;

.field private compareCredibility:Ljava/lang/reflect/Method;

.field private credibilityField:Ljava/lang/reflect/Field;

.field private element:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private expireField:Ljava/lang/reflect/Field;

.field private expired:Ljava/lang/reflect/Method;

.field private getTTL:Ljava/lang/reflect/Method;

.field private getType:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->cache:Ljava/lang/ref/WeakReference;

    .line 18
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->element:Ljava/lang/ref/WeakReference;

    .line 20
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->clazz:Ljava/lang/Class;

    .line 22
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->expired:Ljava/lang/reflect/Method;

    .line 24
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->compareCredibility:Ljava/lang/reflect/Method;

    .line 26
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getType:Ljava/lang/reflect/Method;

    .line 28
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getTTL:Ljava/lang/reflect/Method;

    .line 30
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->expireField:Ljava/lang/reflect/Field;

    .line 32
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->credibilityField:Ljava/lang/reflect/Field;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->cache:Ljava/lang/ref/WeakReference;

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->element:Ljava/lang/ref/WeakReference;

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->clazz:Ljava/lang/Class;

    .line 40
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->clazz:Ljava/lang/Class;

    const-string v1, "expire"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->expireField:Ljava/lang/reflect/Field;

    .line 41
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->clazz:Ljava/lang/Class;

    const-string v1, "credibility"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->credibilityField:Ljava/lang/reflect/Field;

    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->clazz:Ljava/lang/Class;

    const-string v1, "expired"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->expired:Ljava/lang/reflect/Method;

    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->clazz:Ljava/lang/Class;

    const-string v1, "compareCredibility"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->compareCredibility:Ljava/lang/reflect/Method;

    .line 45
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->clazz:Ljava/lang/Class;

    const-string v1, "getType"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getType:Ljava/lang/reflect/Method;

    .line 46
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->clazz:Ljava/lang/Class;

    const-string v1, "getTTL"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getTTL:Ljava/lang/reflect/Method;

    .line 48
    new-array v0, v6, [Ljava/lang/reflect/AccessibleObject;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->expireField:Ljava/lang/reflect/Field;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->credibilityField:Ljava/lang/reflect/Field;

    aput-object v1, v0, v5

    invoke-static {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/reflect/AccessibleObject;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->expired:Ljava/lang/reflect/Method;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->compareCredibility:Ljava/lang/reflect/Method;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getType:Ljava/lang/reflect/Method;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getTTL:Ljava/lang/reflect/Method;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->expireField:Ljava/lang/reflect/Field;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->credibilityField:Ljava/lang/reflect/Field;

    aput-object v2, v0, v1

    invoke-static {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 56
    return-void
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    .prologue
    .line 115
    .line 116
    const/4 v0, 0x0

    move-object v1, p0

    .line 118
    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 120
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 125
    :goto_1
    if-eqz v0, :cond_0

    .line 126
    return-object v0

    .line 128
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not exist in class \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :catch_0
    move-exception v2

    goto :goto_1

    .line 122
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 136
    .line 137
    const/4 v0, 0x0

    move-object v1, p0

    .line 139
    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 141
    :try_start_0
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 146
    :goto_1
    if-eqz v0, :cond_0

    .line 147
    return-object v0

    .line 149
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not exist in class \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :catch_0
    move-exception v2

    goto :goto_1

    .line 143
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static limitExpire(JJ)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 156
    cmp-long v0, p2, v4

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    move-wide p0, p2

    .line 160
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    add-long/2addr v0, p0

    .line 162
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 163
    :cond_1
    const v0, 0x7fffffff

    .line 165
    :goto_0
    return v0

    :cond_2
    long-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method protected compareCredibility(I)I
    .locals 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->compareCredibility:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->element:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected expired()Z
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->expired:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->element:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCredibility()I
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->credibilityField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->element:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected getElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->element:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method protected getExpire()I
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->expireField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->element:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getExpiresIn()I
    .locals 6

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getExpire()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTTL()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getTTL:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getTTL:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->element:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 73
    if-nez v0, :cond_0

    move-wide v0, v2

    .line 75
    :goto_0
    return-wide v0

    .line 73
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 75
    goto :goto_0
.end method

.method protected getType()I
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getType:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->element:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public resetExpire()V
    .locals 8

    .prologue
    .line 81
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->cache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->expireField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->element:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getTTL()J

    move-result-wide v4

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ElementHelper;->cache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->getMaxCache()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->limitExpire(JJ)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 84
    :cond_0
    return-void
.end method
