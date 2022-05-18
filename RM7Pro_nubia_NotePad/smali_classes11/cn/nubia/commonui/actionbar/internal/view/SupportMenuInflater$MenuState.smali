.class Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemActionProvider:Landroid/support/v4/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemLayoutPadding:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 330
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->this$0:Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 333
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->resetGroup()V

    .line 334
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;)Landroid/support/v4/view/ActionProvider;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;

    .prologue
    .line 270
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1
    .param p1, "shortcutString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 420
    if-nez p1, :cond_0

    .line 423
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->this$0:Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    invoke-static {v3}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;->access$100(Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 505
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 506
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 510
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 507
    :catch_0
    move-exception v2

    .line 508
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "NubiaWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot instantiate class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 428
    iget-boolean v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 429
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 430
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    if-lt v3, v4, :cond_2

    move v3, v4

    .line 431
    :goto_0
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 432
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iget v5, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 433
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-char v5, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 434
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-char v5, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 435
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 437
    instance-of v3, p1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 438
    check-cast v3, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    iget v5, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemLayoutPadding:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setLayoutPaddingPixel(Ljava/lang/Integer;)V

    .line 441
    :cond_0
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v3, :cond_1

    .line 442
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 445
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 446
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->this$0:Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    invoke-static {v3}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;->access$100(Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 447
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 430
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 450
    :cond_3
    new-instance v3, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->this$0:Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    .line 451
    invoke-static {v5}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;->access$400(Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 454
    :cond_4
    instance-of v3, p1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v3, :cond_9

    move-object v3, p1

    check-cast v3, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    move-object v2, v3

    .line 455
    .local v2, "impl":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    :goto_1
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v5, 0x2

    if-lt v3, v5, :cond_5

    .line 456
    instance-of v3, p1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v3, :cond_a

    move-object v3, p1

    .line 457
    check-cast v3, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 463
    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 464
    .local v1, "actionViewSpecified":Z
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 465
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 466
    invoke-static {}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;->access$500()[Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->this$0:Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    invoke-static {v5}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;->access$600(Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;)[Ljava/lang/Object;

    move-result-object v5

    .line 465
    invoke-direct {p0, v3, v4, v5}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 467
    .local v0, "actionView":Landroid/view/View;
    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 468
    const/4 v1, 0x1

    .line 470
    .end local v0    # "actionView":Landroid/view/View;
    :cond_6
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v3, :cond_7

    .line 471
    if-nez v1, :cond_b

    .line 472
    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 473
    const/4 v1, 0x1

    .line 479
    :cond_7
    :goto_3
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v3, :cond_8

    .line 480
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    .line 482
    :cond_8
    return-void

    .line 454
    .end local v1    # "actionViewSpecified":Z
    .end local v2    # "impl":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 458
    .restart local v2    # "impl":Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;
    :cond_a
    instance-of v3, p1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;

    if-eqz v3, :cond_5

    move-object v3, p1

    .line 459
    check-cast v3, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    goto :goto_2

    .line 475
    .restart local v1    # "actionViewSpecified":Z
    :cond_b
    const-string v3, "NubiaWidget"

    const-string v4, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public addItem()V
    .locals 5

    .prologue
    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 486
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 487
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 6

    .prologue
    .line 490
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 491
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupId:I

    iget v3, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemId:I

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 492
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 493
    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->this$0:Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;->access$100(Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/nubia/commonui/R$styleable;->MenuGroup:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 351
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->MenuGroup_android_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupId:I

    .line 352
    sget v1, Lcn/nubia/commonui/R$styleable;->MenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 354
    sget v1, Lcn/nubia/commonui/R$styleable;->MenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 355
    sget v1, Lcn/nubia/commonui/R$styleable;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 357
    sget v1, Lcn/nubia/commonui/R$styleable;->MenuGroup_android_visible:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 358
    sget v1, Lcn/nubia/commonui/R$styleable;->MenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 360
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 367
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->this$0:Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    invoke-static {v4}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;->access$100(Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v4

    sget-object v7, Lcn/nubia/commonui/R$styleable;->MenuItem:[I

    invoke-virtual {v4, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 370
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_id:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemId:I

    .line 371
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_menuCategory:I

    iget v7, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 372
    .local v1, "category":I
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_orderInCategory:I

    iget v7, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 373
    .local v3, "order":I
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v7, 0xffff

    and-int/2addr v7, v3

    or-int/2addr v4, v7

    iput v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 375
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 376
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 377
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_icon:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 378
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 379
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 380
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_numericShortcut:I

    .line 381
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 382
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 384
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 390
    :goto_1
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_checked:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 391
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_visible:I

    iget-boolean v7, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 392
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v7, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 393
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_showAsAction:I

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 394
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 395
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_actionLayout:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 396
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_android_actionViewClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 397
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 398
    sget v4, Lcn/nubia/commonui/R$styleable;->MenuItem_layout_padding:I

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->this$0:Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    .line 399
    invoke-static {v7}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;->access$100(Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_action_bar_menu_item_layout_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 398
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemLayoutPadding:I

    .line 401
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_2

    move v2, v5

    .line 402
    .local v2, "hasActionProvider":Z
    :goto_2
    if-eqz v2, :cond_3

    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 403
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 404
    invoke-static {}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;->access$200()[Ljava/lang/Class;

    move-result-object v5

    iget-object v7, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->this$0:Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    .line 405
    invoke-static {v7}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;->access$300(Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;)[Ljava/lang/Object;

    move-result-object v7

    .line 403
    invoke-direct {p0, v4, v5, v7}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ActionProvider;

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 414
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    iput-boolean v6, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 417
    return-void

    .end local v2    # "hasActionProvider":Z
    :cond_0
    move v4, v6

    .line 384
    goto/16 :goto_0

    .line 388
    :cond_1
    iget v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto/16 :goto_1

    :cond_2
    move v2, v6

    .line 401
    goto :goto_2

    .line 407
    .restart local v2    # "hasActionProvider":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 408
    const-string v4, "NubiaWidget"

    const-string v5, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    goto :goto_3
.end method

.method public resetGroup()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupId:I

    .line 338
    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 339
    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 340
    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 341
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 342
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 343
    return-void
.end method
