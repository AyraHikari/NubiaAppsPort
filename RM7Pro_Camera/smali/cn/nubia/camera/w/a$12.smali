.class Lcn/nubia/camera/w/a$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/w/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/w/a;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 14

    .line 316
    iget-object v0, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v3, 0x0

    const-string v4, "pref_camera_exposure_time_min_key"

    const-string v5, "pref_camera_exposure_time_nanosec_key"

    const-wide/16 v6, 0x0

    if-gtz v1, :cond_0

    .line 318
    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 320
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1}, Lcn/nubia/camera/w/a;->e(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-static {v4}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0f0027

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    sget-object v4, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    iget-object v6, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-static {v6}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1, v3}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;I)V

    goto/16 :goto_1

    .line 323
    :cond_0
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v8

    const/16 v8, 0x8

    const-string v9, "s"

    const-string v10, " s"

    if-gez v1, :cond_1

    .line 324
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1}, Lcn/nubia/camera/w/a;->e(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    sget-wide v10, Lcn/nubia/camera/aq/f;->h:J

    long-to-float v1, v10

    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/Rational;->floatValue()F

    move-result v10

    mul-float/2addr v1, v10

    float-to-long v10, v1

    invoke-interface {v0, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 327
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    sget-object v4, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1, v8}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;I)V

    goto/16 :goto_1

    .line 330
    :cond_1
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    const/high16 v11, 0x42f00000    # 120.0f

    cmpl-float v1, v1, v11

    if-lez v1, :cond_2

    .line 331
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1}, Lcn/nubia/camera/w/a;->e(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/Rational;->getNumerator()I

    move-result v10

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " min"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    int-to-long v5, v1

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 334
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    sget-object v4, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Rational;->getNumerator()I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "min"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1}, Lcn/nubia/camera/w/a;->e(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/Rational;->getNumerator()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    int-to-long v10, v1

    sget-wide v12, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v10, v12

    invoke-interface {v0, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 339
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    sget-object v4, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Rational;->getNumerator()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 341
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1, v8}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;I)V

    .line 343
    :goto_1
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 344
    iget-object p1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    sget-object v1, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    new-instance v2, Landroid/util/Rational;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v2}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    goto :goto_2

    .line 346
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    sget-object v2, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    invoke-static {v1, v2, p1}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 348
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 349
    iget-object p1, p0, Lcn/nubia/camera/w/a$12;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->f(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/prosetting/ui/b;)V

    return-void
.end method
