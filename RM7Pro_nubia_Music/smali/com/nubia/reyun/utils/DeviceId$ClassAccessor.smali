.class Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/reyun/utils/DeviceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassAccessor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 541
    invoke-direct/range {p0 .. p5}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 566
    invoke-direct {p0, p1, p2, p3}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/nubia/reyun/utils/DeviceId$ClassAccessor;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
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
    .line 568
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 569
    if-nez p1, :cond_2

    .line 570
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 573
    :goto_0
    if-eqz v0, :cond_1

    .line 575
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_1

    .line 577
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 578
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 585
    :goto_1
    return-object v0

    .line 571
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 585
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method private invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 543
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 544
    if-nez p1, :cond_4

    .line 545
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 548
    :goto_0
    if-eqz v0, :cond_3

    .line 550
    if-nez p4, :cond_1

    .line 551
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 553
    :goto_1
    if-eqz v0, :cond_3

    .line 554
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 555
    if-nez p4, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 563
    :goto_2
    return-object v0

    .line 546
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 556
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

    .line 558
    :catch_0
    move-exception v0

    .line 563
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    move-object v0, p1

    goto :goto_0
.end method

.method private loadClass(Ljava/lang/String;)Ljava/lang/Class;
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
    .line 530
    const/4 v0, 0x0

    .line 531
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 538
    :cond_0
    :goto_0
    return-object v0

    .line 534
    :catch_0
    move-exception v1

    goto :goto_0
.end method
