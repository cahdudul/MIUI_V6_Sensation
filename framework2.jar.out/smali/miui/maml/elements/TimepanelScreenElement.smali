.class public Lmiui/maml/elements/TimepanelScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "TimepanelScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TimepanelScreenElement"

.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field public static final TAG_NAME:Ljava/lang/String; = "Time"


# instance fields
.field private mBmpHeight:I

.field private mBmpWidth:I

.field protected mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatExp:Lmiui/maml/data/Expression;

.field private mFormatRaw:Ljava/lang/String;

.field private mLoadResourceFailed:Z

.field private mLocalizedZero:C

.field private mOldFormat:Ljava/lang/String;

.field private mOldSrc:Ljava/lang/String;

.field private mPreMinute:J

.field private mPreTime:Ljava/lang/CharSequence;

.field private mSpace:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 57
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 61
    const-string v0, "format"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/TimepanelScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    .line 62
    const-string v0, "formatExp"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/TimepanelScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    .line 63
    const-string v0, "space"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lmiui/maml/elements/TimepanelScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    .line 64
    return-void
.end method

.method private createBitmap()V
    .locals 10

    .prologue
    .line 151
    const-string v3, "0123456789:"

    .line 152
    .local v3, "digits":Ljava/lang/String;
    const/4 v5, 0x0

    .line 153
    .local v5, "maxWidth":I
    const/4 v1, 0x0

    .line 154
    .local v1, "density":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lmiui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 156
    .local v2, "digitBmp":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 157
    const/4 v7, 0x1

    iput-boolean v7, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 158
    const-string v7, "TimepanelScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to load digit bitmap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v2    # "digitBmp":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 161
    .restart local v2    # "digitBmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 162
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 163
    :cond_1
    iget v7, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 164
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    .line 165
    :cond_2
    if-nez v1, :cond_3

    .line 166
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .line 154
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "digitBmp":Landroid/graphics/Bitmap;
    :cond_4
    iget v7, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    int-to-double v7, v7

    invoke-virtual {p0, v7, v8}, Lmiui/maml/elements/TimepanelScreenElement;->scale(D)F

    move-result v7

    float-to-int v6, v7

    .line 169
    .local v6, "space":I
    mul-int/lit8 v7, v5, 0x5

    mul-int/lit8 v8, v6, 0x4

    add-int/2addr v7, v8

    iget v8, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 171
    iget-object v7, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v7, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 172
    iget v7, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    int-to-float v7, v7

    invoke-virtual {p0, v7}, Lmiui/maml/elements/TimepanelScreenElement;->descale(F)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {p0, v7, v8}, Lmiui/maml/elements/TimepanelScreenElement;->setActualHeight(D)V

    goto :goto_1
.end method

.method private getDigitBmp(C)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 176
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "src":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const-string v0, "time.png"

    .line 180
    :cond_0
    const/16 v2, 0x3a

    if-ne p1, v2, :cond_1

    const-string v1, "dot"

    .line 182
    .end local p1    # "c":C
    .local v1, "suffix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 180
    .end local v1    # "suffix":Ljava/lang/String;
    .restart local p1    # "c":C
    :cond_1
    iget-char v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    if-lt p1, v2, :cond_2

    iget-char v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    add-int/lit8 v2, v2, 0x9

    if-gt p1, v2, :cond_2

    iget-char v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x30

    int-to-char p1, v2

    .end local p1    # "c":C
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method private setDateFormat()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 197
    :goto_1
    return-void

    .line 193
    :cond_0
    const-string v0, "hh:mm"

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateTime(Z)V
    .locals 13
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 113
    iget-boolean v10, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    if-eqz v10, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v10, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v10}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    .local v2, "currentTimeMillis":J
    iget-object v10, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 124
    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 125
    .local v6, "newTime":Ljava/lang/CharSequence;
    if-nez p1, :cond_2

    iget-object v10, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 128
    :cond_2
    iput-object v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 129
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    .local v8, "tmpCanvas":Landroid/graphics/Canvas;
    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    const/4 v9, 0x0

    .line 132
    .local v9, "x":I
    iget v10, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    int-to-double v10, v10

    invoke-virtual {p0, v10, v11}, Lmiui/maml/elements/TimepanelScreenElement;->scale(D)F

    move-result v10

    float-to-int v7, v10

    .line 133
    .local v7, "space":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 134
    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 135
    .local v4, "digit":C
    invoke-direct {p0, v4}, Lmiui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 137
    int-to-float v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 139
    add-int/2addr v9, v7

    .line 133
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 142
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "digit":C
    :cond_4
    iget-object v10, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v10}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 144
    sub-int v10, v9, v7

    iput v10, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    .line 145
    iget v10, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    int-to-float v10, v10

    invoke-virtual {p0, v10}, Lmiui/maml/elements/TimepanelScreenElement;->descale(F)F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {p0, v10, v11}, Lmiui/maml/elements/TimepanelScreenElement;->setActualWidth(D)V

    .line 147
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->requestUpdate()V

    goto :goto_0
.end method


# virtual methods
.method protected doTick(J)V
    .locals 6
    .param p1, "currentTime"    # J

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;->doTick(J)V

    .line 96
    const-wide/32 v4, 0xea60

    div-long v1, p1, v4

    .line 97
    .local v1, "minute":J
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "src":Ljava/lang/String;
    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "format":Ljava/lang/String;
    iget-wide v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    :cond_0
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 101
    iput-wide v1, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    .line 102
    iput-object v3, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    .line 105
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 79
    return-void
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->init()V

    .line 69
    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 71
    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->createBitmap()V

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 73
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 88
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 89
    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 91
    return-void
.end method
