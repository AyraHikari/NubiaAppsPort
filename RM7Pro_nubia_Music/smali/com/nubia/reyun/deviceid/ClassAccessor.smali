.class Lcom/nubia/reyun/deviceid/ClassAccessor;
.super Ljava/lang/Object;
.source "ClassAccessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassAccessor"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 49
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 50
    if-nez p1, :cond_2

    .line 51
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 53
    :goto_0
    if-eqz v0, :cond_1

    .line 55
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :goto_1
    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 26
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 27
    if-nez p1, :cond_4

    .line 28
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 30
    :goto_0
    if-eqz v0, :cond_3

    .line 32
    if-nez p4, :cond_1

    .line 33
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 35
    :goto_1
    if-eqz v0, :cond_3

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 37
    if-nez p4, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_2
    return-object v0

    .line 28
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 38
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    .line 40
    :catch_0
    move-exception v0

    .line 45
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    move-object v0, p1

    goto :goto_0
.end method

.method loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    return-object v0

    .line 17
    :catch_0
    move-exception v1

    goto :goto_0
.end method
