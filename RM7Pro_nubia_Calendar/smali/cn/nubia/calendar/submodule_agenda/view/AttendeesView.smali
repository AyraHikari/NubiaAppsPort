.class public Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;
.super Landroid/widget/LinearLayout;
.source "AttendeesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMAIL_PROJECTION_CONTACT_ID_INDEX:I = 0x0

.field private static final EMAIL_PROJECTION_CONTACT_LOOKUP_INDEX:I = 0x1

.field private static final EMAIL_PROJECTION_PHOTO_ID_INDEX:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AttendeesView"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultBadge:Landroid/graphics/drawable/Drawable;

.field private final mDefaultPhotoAlpha:I

.field private final mDividerForMaybe:Landroid/view/View;

.field private final mDividerForNo:Landroid/view/View;

.field private final mDividerForNoResponse:Landroid/view/View;

.field private final mDividerForYes:Landroid/view/View;

.field private final mEntries:[Ljava/lang/CharSequence;

.field private final mGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMaybe:I

.field private mNo:I

.field private mNoResponse:I

.field private final mNoResponsePhotoAlpha:I

.field private final mPresenceQueryHandler:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;

.field mRecycledPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mValidator:Lcn/nubia/common/Rfc822Validator;

.field private mYes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mContext:Landroid/content/Context;

    .line 108
    const-string v2, "layout_inflater"

    .line 109
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    .line 110
    new-instance v2, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mPresenceQueryHandler:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f02010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDefaultBadge:Landroid/graphics/drawable/Drawable;

    .line 115
    const v2, 0x7f10002b

    .line 116
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNoResponsePhotoAlpha:I

    .line 117
    const v2, 0x7f100027

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDefaultPhotoAlpha:I

    .line 122
    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    .line 123
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForYes:Landroid/view/View;

    .line 124
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForNo:Landroid/view/View;

    .line 125
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForMaybe:Landroid/view/View;

    .line 126
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    .line 129
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 130
    .local v0, "matrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 131
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->updateAttendeeView(Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private addOneAttendee(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;)V
    .locals 16
    .param p1, "attendee"    # Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .prologue
    .line 304
    invoke-virtual/range {p0 .. p1}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->contains(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 307
    :cond_0
    new-instance v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDefaultBadge:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;-><init>(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;Landroid/graphics/drawable/Drawable;)V

    .line 308
    .local v3, "item":Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;
    move-object/from16 v0, p1

    iget v14, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mStatus:I

    .line 310
    .local v14, "status":I
    const/4 v10, 0x0

    .line 311
    .local v10, "firstAttendeeInCategory":Z
    packed-switch v14, :pswitch_data_0

    .line 347
    :pswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNo:I

    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_2
    add-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mMaybe:I

    if-nez v1, :cond_b

    const/4 v1, 0x0

    :goto_3
    add-int v13, v2, v1

    .line 349
    .local v13, "startIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNoResponse:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 351
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNoResponse:I

    if-nez v1, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->addView(Landroid/view/View;I)V

    .line 353
    const/4 v10, 0x1

    .line 355
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNoResponse:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNoResponse:I

    .line 356
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNoResponse:I

    add-int v11, v13, v1

    .line 361
    .local v11, "index":I
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->constructAttendeeView(Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v15

    .line 362
    .local v15, "view":Landroid/view/View;
    invoke-virtual {v15, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 363
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->addView(Landroid/view/View;I)V

    .line 365
    if-nez v10, :cond_2

    .line 366
    add-int/lit8 v1, v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 367
    .local v12, "prevItem":Landroid/view/View;
    if-eqz v12, :cond_2

    .line 368
    const v1, 0x7f1100fe

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 369
    .local v9, "Separator":Landroid/view/View;
    if-eqz v9, :cond_2

    .line 370
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    .end local v9    # "Separator":Landroid/view/View;
    .end local v12    # "prevItem":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    .line 377
    .local v6, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 378
    .local v7, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mIdentity:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object/from16 v0, p1

    iget-object v1, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mIdNamespace:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 380
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 381
    .local v4, "uri":Landroid/net/Uri;
    const-string v6, "mimetype=? AND data1=? AND data2=?"

    .line 383
    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/String;

    .end local v7    # "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "vnd.android.cursor.item/identity"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mIdentity:Ljava/lang/String;

    aput-object v2, v7, v1

    const/4 v1, 0x2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mIdNamespace:Ljava/lang/String;

    aput-object v2, v7, v1

    .line 391
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mPresenceQueryHandler:Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;

    iget v2, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    add-int/lit8 v2, v2, 0x1

    sget-object v5, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView$PresenceQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v11    # "index":I
    .end local v13    # "startIndex":I
    .end local v15    # "view":Landroid/view/View;
    :pswitch_1
    const/4 v13, 0x0

    .line 314
    .restart local v13    # "startIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForYes:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 315
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    if-nez v1, :cond_3

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForYes:Landroid/view/View;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->addView(Landroid/view/View;I)V

    .line 317
    const/4 v10, 0x1

    .line 319
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    .line 320
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    add-int/lit8 v11, v1, 0x0

    .line 321
    .restart local v11    # "index":I
    goto/16 :goto_4

    .line 324
    .end local v11    # "index":I
    .end local v13    # "startIndex":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    if-nez v1, :cond_5

    const/4 v13, 0x0

    .line 325
    .restart local v13    # "startIndex":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForNo:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNo:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 326
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNo:I

    if-nez v1, :cond_4

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForNo:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->addView(Landroid/view/View;I)V

    .line 328
    const/4 v10, 0x1

    .line 330
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNo:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNo:I

    .line 331
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNo:I

    add-int v11, v13, v1

    .line 332
    .restart local v11    # "index":I
    goto/16 :goto_4

    .line 324
    .end local v11    # "index":I
    .end local v13    # "startIndex":I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    add-int/lit8 v13, v1, 0x1

    goto :goto_6

    .line 335
    :pswitch_3
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    if-nez v1, :cond_7

    const/4 v1, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNo:I

    if-nez v2, :cond_8

    const/4 v2, 0x0

    :goto_8
    add-int v13, v1, v2

    .line 337
    .restart local v13    # "startIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForMaybe:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mMaybe:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 338
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mMaybe:I

    if-nez v1, :cond_6

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDividerForMaybe:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->addView(Landroid/view/View;I)V

    .line 340
    const/4 v10, 0x1

    .line 342
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mMaybe:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mMaybe:I

    .line 343
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mMaybe:I

    add-int v11, v13, v1

    .line 344
    .restart local v11    # "index":I
    goto/16 :goto_4

    .line 335
    .end local v11    # "index":I
    .end local v13    # "startIndex":I
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNo:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 347
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNo:I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mMaybe:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 387
    .restart local v6    # "selection":Ljava/lang/String;
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    .restart local v11    # "index":I
    .restart local v13    # "startIndex":I
    .restart local v15    # "view":Landroid/view/View;
    :cond_c
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 388
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "uri":Landroid/net/Uri;
    goto/16 :goto_5

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private constructAttendeeView(Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .locals 3
    .param p1, "item"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030046

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mView:Landroid/view/View;

    .line 183
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->updateAttendeeView(Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030055

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 159
    return-object v0
.end method

.method private updateAttendeeView(Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .locals 8
    .param p1, "item"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    .prologue
    .line 191
    iget-object v0, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .line 192
    .local v0, "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    iget-object v5, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mView:Landroid/view/View;

    .line 193
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f1100fb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 194
    .local v4, "nameView":Landroid/widget/TextView;
    iget-object v6, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-boolean v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-eqz v6, :cond_3

    .line 198
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x10

    .line 197
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 206
    :goto_1
    const v6, 0x7f1100fc

    .line 207
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 208
    .local v3, "button":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 209
    invoke-virtual {v3, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 210
    iget-boolean v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-eqz v6, :cond_5

    .line 211
    const v6, 0x7f020114

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 212
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mContext:Landroid/content/Context;

    const/high16 v7, 0x7f0c0000

    .line 213
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 219
    :goto_3
    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v6, 0x7f1100fd

    .line 222
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    .line 224
    .local v2, "badgeView":Landroid/widget/QuickContactBadge;
    const/4 v1, 0x0

    .line 226
    .local v1, "badge":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mRecycledPhotos:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 227
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mRecycledPhotos:Ljava/util/HashMap;

    iget-object v7, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    iget-object v7, v7, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "badge":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 229
    .restart local v1    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz v1, :cond_1

    .line 230
    iput-object v1, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 232
    :cond_1
    iget-object v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    iget v6, v6, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mStatus:I

    if-nez v6, :cond_6

    .line 235
    iget-object v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNoResponsePhotoAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 239
    :goto_4
    iget-object v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    iget v6, v6, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 240
    iget-object v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    :goto_5
    iget-object v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mContactLookupUri:Landroid/net/Uri;

    if-eqz v6, :cond_8

    .line 252
    iget-object v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mContactLookupUri:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 256
    :goto_6
    const/16 v6, 0x3c

    invoke-virtual {v2, v6}, Landroid/widget/QuickContactBadge;->setMaxHeight(I)V

    .line 258
    return-object v5

    .line 194
    .end local v1    # "badge":Landroid/graphics/drawable/Drawable;
    .end local v2    # "badgeView":Landroid/widget/QuickContactBadge;
    .end local v3    # "button":Landroid/widget/ImageButton;
    :cond_2
    iget-object v6, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    goto/16 :goto_0

    .line 201
    :cond_3
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    and-int/lit8 v6, v6, -0x11

    .line 200
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto/16 :goto_1

    .line 208
    .restart local v3    # "button":Landroid/widget/ImageButton;
    :cond_4
    const/16 v6, 0x8

    goto :goto_2

    .line 215
    :cond_5
    const v6, 0x7f02011c

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 216
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mContext:Landroid/content/Context;

    const v7, 0x7f0c000c

    .line 217
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 237
    .restart local v1    # "badge":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "badgeView":Landroid/widget/QuickContactBadge;
    :cond_6
    iget-object v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mDefaultPhotoAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4

    .line 242
    :cond_7
    iget-object v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_5

    .line 254
    :cond_8
    iget-object v6, p1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    iget-object v6, v6, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_6
.end method

.method private updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "divider"    # Landroid/view/View;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "count"    # I

    .prologue
    .line 167
    const-string v1, "sans-serif"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .local v0, "tf":Landroid/graphics/Typeface;
    move-object v1, p1

    .line 168
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 169
    if-gtz p3, :cond_0

    .line 170
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "divider":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_0
    return-void

    .line 172
    .restart local p1    # "divider":Landroid/view/View;
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "divider":Landroid/view/View;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addAttendees(Ljava/lang/String;)V
    .locals 6
    .param p1, "attendees"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mValidator:Lcn/nubia/common/Rfc822Validator;

    const/4 v4, 0x0

    .line 413
    invoke-static {p1, v3, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->getAddressesFromList(Ljava/lang/String;Lcn/nubia/common/Rfc822Validator;Ljava/util/ArrayList;)Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 414
    .local v1, "addresses":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    monitor-enter p0

    .line 415
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 416
    .local v0, "address":Landroid/text/util/Rfc822Token;
    new-instance v2, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .local v2, "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    iget-object v4, v2, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 419
    iget-object v4, v2, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iput-object v4, v2, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 421
    :cond_0
    invoke-direct {p0, v2}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->addOneAttendee(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 423
    .end local v0    # "address":Landroid/text/util/Rfc822Token;
    .end local v2    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    return-void
.end method

.method public addAttendees(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "attendees":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$Attendee;>;"
    monitor-enter p0

    .line 397
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .line 398
    .local v0, "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->addOneAttendee(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 400
    .end local v0    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    return-void
.end method

.method public addAttendees(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/calendar/model/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "attendees":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcn/nubia/calendar/model/CalendarEventModel$Attendee;>;"
    monitor-enter p0

    .line 405
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .line 406
    .local v0, "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->addOneAttendee(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 408
    .end local v0    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    return-void
.end method

.method public clearAttendees()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 284
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mRecycledPhotos:Ljava/util/HashMap;

    .line 285
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->getChildCount()I

    move-result v2

    .line 286
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 287
    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 288
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 286
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    .line 292
    .local v0, "attendeeItem":Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mRecycledPhotos:Ljava/util/HashMap;

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    iget-object v5, v5, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v6, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 296
    .end local v0    # "attendeeItem":Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->removeAllViews()V

    .line 297
    iput v7, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mYes:I

    .line 298
    iput v7, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNo:I

    .line 299
    iput v7, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mMaybe:I

    .line 300
    iput v7, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mNoResponse:I

    .line 301
    return-void
.end method

.method public contains(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;)Z
    .locals 6
    .param p1, "attendee"    # Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .prologue
    .line 262
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->getChildCount()I

    move-result v2

    .line 263
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 264
    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 265
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 263
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    .line 269
    .local v0, "attendeeItem":Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;
    iget-object v4, p1, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    iget-object v5, v5, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 270
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    const/4 v4, 0x1

    .line 274
    .end local v0    # "attendeeItem":Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getItem(I)Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 508
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 509
    const/4 v1, 0x0

    .line 511
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mAttendee:Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    goto :goto_0
.end method

.method public isMarkAsRemoved(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 433
    const/4 v1, 0x0

    .line 435
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    iget-boolean v1, v1, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mRemoved:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

    .line 518
    .local v0, "item":Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;
    iget-boolean v1, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;->mRemoved:Z

    .line 519
    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->updateAttendeeView(Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;)Landroid/view/View;

    .line 520
    return-void

    .line 518
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 139
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    .line 140
    .local v4, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->getChildCount()I

    move-result v1

    .line 141
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 142
    invoke-virtual {p0, v2}, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "child":Landroid/view/View;
    const v5, 0x7f1100fc

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 144
    .local v3, "minusButton":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "minusButton":Landroid/view/View;
    .end local v4    # "visibility":I
    :cond_1
    const/16 v4, 0x8

    goto :goto_0

    .line 148
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "visibility":I
    :cond_2
    return-void
.end method

.method public setRfc822Validator(Lcn/nubia/common/Rfc822Validator;)V
    .locals 0
    .param p1, "validator"    # Lcn/nubia/common/Rfc822Validator;

    .prologue
    .line 151
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AttendeesView;->mValidator:Lcn/nubia/common/Rfc822Validator;

    .line 152
    return-void
.end method
