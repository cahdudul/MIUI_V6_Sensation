.class public Lmiui/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/media/VolumeController;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/VolumePanel$WarningDialogReceiver;,
        Lmiui/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME_UNIT:I = 0x46

.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/view/VolumePanel$StreamResources;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_FM:I = 0xa

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0x7d0

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;


# instance fields
.field private mActiveStreamIndex:I

.field private mActiveStreamMax:I

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mIsVoiceMutable:Z

.field private mMaxVolumeAnimator:Landroid/animation/AnimatorSet;

.field private final mPlayMasterStreamTones:Z

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field protected mResources:Landroid/content/res/Resources;

.field private mRestoreRingVolume:I

.field private mRingIsSilent:Z

.field private mShowedVolume:I

.field private mSilentAnimator:Landroid/animation/AnimatorSet;

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrateAnimator:Landroid/animation/ValueAnimator;

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;

.field private mVisible:Z

.field private mVoiceCapable:Z

.field private mVolumeDivider:Landroid/widget/ImageView;

.field private mVolumeHeadSet:Landroid/widget/ImageView;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumeProgress:Lmiui/widget/CircleProgressView;

.field private mVolumeType:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const v4, 0xa020021

    const/4 v8, 0x0

    const v7, 0xa0b002a

    const v6, 0xa020025

    .line 88
    sput-boolean v8, Lmiui/view/VolumePanel;->LOGD:Z

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    .line 173
    sget-object v0, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumePanel$StreamResources;

    const v3, 0xa0b0028

    invoke-direct {v2, v3, v4, v4}, Lmiui/view/VolumePanel$StreamResources;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumePanel$StreamResources;

    const v3, 0xa0b002c

    const v4, 0xa02002b

    const v5, 0xa02002c

    invoke-direct {v2, v3, v4, v5}, Lmiui/view/VolumePanel$StreamResources;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumePanel$StreamResources;

    const v3, 0xa0b0029

    const v4, 0xa020028

    const v5, 0xa020029

    invoke-direct {v2, v3, v4, v5}, Lmiui/view/VolumePanel$StreamResources;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumePanel$StreamResources;

    const v3, 0xa0b0027

    const v4, 0xa02001e

    const v5, 0xa02001f

    invoke-direct {v2, v3, v4, v5}, Lmiui/view/VolumePanel$StreamResources;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumePanel$StreamResources;

    invoke-direct {v2, v7, v6, v6}, Lmiui/view/VolumePanel$StreamResources;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumePanel$StreamResources;

    const v3, 0xa0b002b

    const v4, 0xa020026

    const v5, 0xa020027

    invoke-direct {v2, v3, v4, v5}, Lmiui/view/VolumePanel$StreamResources;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumePanel$StreamResources;

    invoke-direct {v2, v7, v6, v6}, Lmiui/view/VolumePanel$StreamResources;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    const/16 v1, -0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumePanel$StreamResources;

    invoke-direct {v2, v7, v6, v6}, Lmiui/view/VolumePanel$StreamResources;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumePanel$StreamResources;

    invoke-direct {v2, v7, v6, v6}, Lmiui/view/VolumePanel$StreamResources;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeService"    # Landroid/media/AudioService;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 253
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    iput v3, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 154
    iput v4, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 155
    iput v4, p0, Lmiui/view/VolumePanel;->mActiveStreamMax:I

    .line 156
    iput v4, p0, Lmiui/view/VolumePanel;->mActiveStreamIndex:I

    .line 328
    new-instance v2, Lmiui/view/VolumePanel$1;

    invoke-direct {v2, p0}, Lmiui/view/VolumePanel$1;-><init>(Lmiui/view/VolumePanel;)V

    iput-object v2, p0, Lmiui/view/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 996
    iput v4, p0, Lmiui/view/VolumePanel;->mShowedVolume:I

    .line 254
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v4, 0x80d0017

    invoke-direct {v2, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 255
    iget-object v2, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lmiui/view/VolumePanel;->mResources:Landroid/content/res/Resources;

    .line 256
    iget-object v2, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lmiui/view/VolumePanel;->mDisplay:Landroid/view/Display;

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0xa07001a    # 6.500033E-33f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/view/VolumePanel;->mIsVoiceMutable:Z

    .line 259
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 260
    iput-object p2, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 262
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    new-array v2, v2, [Landroid/media/ToneGenerator;

    iput-object v2, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 263
    iget-object v2, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 265
    iget-object v2, p0, Lmiui/view/VolumePanel;->mResources:Landroid/content/res/Resources;

    const v4, 0xa070009    # 6.50002E-33f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 266
    .local v1, "masterVolumeOnly":Z
    iget-object v2, p0, Lmiui/view/VolumePanel;->mResources:Landroid/content/res/Resources;

    const v4, 0xa07000a    # 6.500021E-33f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 268
    .local v0, "masterVolumeKeySounds":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lmiui/view/VolumePanel;->mPlayMasterStreamTones:Z

    .line 270
    invoke-direct {p0}, Lmiui/view/VolumePanel;->listenToRingerMode()V

    .line 271
    return-void

    :cond_0
    move v2, v3

    .line 268
    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lmiui/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 85
    sput-object p0, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumePanel;

    .prologue
    .line 85
    invoke-direct {p0}, Lmiui/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$300(Lmiui/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumePanel;

    .prologue
    .line 85
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$400(Lmiui/view/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumePanel;

    .prologue
    .line 85
    invoke-direct {p0}, Lmiui/view/VolumePanel;->updateStreamDevice()V

    return-void
.end method

.method static synthetic access$500(Lmiui/view/VolumePanel;)Lmiui/widget/CircleProgressView;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumePanel;

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumePanel;

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cancelAnimations()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1061
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1063
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mMaxVolumeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1064
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVibrateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1065
    iget-object v0, p0, Lmiui/view/VolumePanel;->mSilentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1066
    iget-object v0, p0, Lmiui/view/VolumePanel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1068
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1069
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    invoke-virtual {v0, v1}, Lmiui/widget/CircleProgressView;->setTranslationX(F)V

    .line 1070
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    invoke-virtual {v0, v1}, Lmiui/widget/CircleProgressView;->setTranslationY(F)V

    .line 1071
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    invoke-virtual {v0, v2}, Lmiui/widget/CircleProgressView;->setScaleX(F)V

    .line 1072
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    invoke-virtual {v0, v2}, Lmiui/widget/CircleProgressView;->setScaleY(F)V

    .line 1073
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    invoke-virtual {v0, v2}, Lmiui/widget/CircleProgressView;->setAlpha(F)V

    goto :goto_0
.end method

.method private createVolumePanel()V
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 339
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0xa030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    .line 340
    iget-object v1, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v2, Lmiui/view/VolumePanel$2;

    invoke-direct {v2, p0}, Lmiui/view/VolumePanel$2;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    iget-object v1, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xa090031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    .line 356
    iget-object v1, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xa090032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    .line 357
    iget-object v1, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xa090034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    .line 358
    iget-object v1, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xa090033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    .line 359
    iget-object v1, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v2, 0xa090030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/CircleProgressView;

    iput-object v1, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    .line 361
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    const v2, 0xa020020

    invoke-virtual {v1, v2}, Lmiui/widget/CircleProgressView;->setBackgroundResource(I)V

    .line 362
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    const v2, 0xa02002a

    invoke-virtual {v1, v2}, Lmiui/widget/CircleProgressView;->setProgressResource(I)V

    .line 363
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    invoke-virtual {v1, p0}, Lmiui/widget/CircleProgressView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 365
    invoke-direct {p0}, Lmiui/view/VolumePanel;->prepareAnimators()V

    .line 368
    iget-object v1, p0, Lmiui/view/VolumePanel;->mResources:Landroid/content/res/Resources;

    const v2, 0xa07000b    # 6.500022E-33f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    goto/16 :goto_0
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 955
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 956
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 957
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 825
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 829
    iget-boolean v1, p0, Lmiui/view/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 830
    const/4 p1, 0x1

    .line 835
    :cond_0
    monitor-enter p0

    .line 836
    :try_start_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 838
    :try_start_1
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 832
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-boolean v1, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 841
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 847
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 410
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 411
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 415
    :goto_0
    return v0

    .line 412
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 413
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 420
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 421
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 425
    :goto_0
    return v0

    .line 422
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 423
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 400
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 401
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 405
    :goto_0
    return v0

    .line 402
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 403
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :cond_2
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 376
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/view/VolumePanel$3;

    invoke-direct {v2, p0}, Lmiui/view/VolumePanel$3;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 397
    return-void
.end method

.method private prepareAnimators()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3c

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    .line 1004
    new-instance v0, Lmiui/view/VolumePanel$5;

    invoke-direct {v0, p0}, Lmiui/view/VolumePanel$5;-><init>(Lmiui/view/VolumePanel;)V

    .line 1013
    .local v0, "maxAnimatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    new-array v5, v8, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1014
    .local v2, "maxOut":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1015
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1017
    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1018
    .local v1, "maxIn":Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1019
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1021
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lmiui/view/VolumePanel;->mMaxVolumeAnimator:Landroid/animation/AnimatorSet;

    .line 1022
    iget-object v5, p0, Lmiui/view/VolumePanel;->mMaxVolumeAnimator:Landroid/animation/AnimatorSet;

    new-array v6, v8, [Landroid/animation/Animator;

    aput-object v2, v6, v10

    aput-object v1, v6, v11

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1024
    iget-object v5, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1025
    .local v4, "slientOut":Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1027
    iget-object v5, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1028
    .local v3, "slientIn":Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1030
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lmiui/view/VolumePanel;->mSilentAnimator:Landroid/animation/AnimatorSet;

    .line 1031
    iget-object v5, p0, Lmiui/view/VolumePanel;->mSilentAnimator:Landroid/animation/AnimatorSet;

    new-array v6, v8, [Landroid/animation/Animator;

    aput-object v4, v6, v10

    aput-object v3, v6, v11

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1033
    iget-object v5, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1034
    iget-object v5, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 1035
    new-array v5, v8, [F

    fill-array-data v5, :array_4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lmiui/view/VolumePanel;->mVibrateAnimator:Landroid/animation/ValueAnimator;

    .line 1036
    iget-object v5, p0, Lmiui/view/VolumePanel;->mVibrateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x46

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1037
    iget-object v5, p0, Lmiui/view/VolumePanel;->mVibrateAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1038
    iget-object v5, p0, Lmiui/view/VolumePanel;->mVibrateAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lmiui/view/VolumePanel$6;

    invoke-direct {v6, p0}, Lmiui/view/VolumePanel$6;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1048
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v5, p0, Lmiui/view/VolumePanel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 1049
    iget-object v5, p0, Lmiui/view/VolumePanel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1050
    iget-object v5, p0, Lmiui/view/VolumePanel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1051
    iget-object v5, p0, Lmiui/view/VolumePanel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1052
    iget-object v5, p0, Lmiui/view/VolumePanel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lmiui/view/VolumePanel$7;

    invoke-direct {v6, p0}, Lmiui/view/VolumePanel$7;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1058
    return-void

    .line 1013
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    .line 1017
    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 1024
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 1027
    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 1035
    :array_4
    .array-data 4
        0x0
        0x40c90fdb
    .end array-data
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 950
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 951
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 952
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "resMuteId"    # I

    .prologue
    .line 856
    sget-object v1, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamResources;

    .line 857
    .local v0, "stream":Lmiui/view/VolumePanel$StreamResources;
    if-eqz v0, :cond_0

    .line 858
    iput p1, v0, Lmiui/view/VolumePanel$StreamResources;->iconRes:I

    .line 859
    iput p2, v0, Lmiui/view/VolumePanel$StreamResources;->iconMuteRes:I

    .line 861
    :cond_0
    return-void
.end method

.method private setStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 430
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 431
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 437
    :goto_0
    return-void

    .line 432
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 433
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateMajorProgress()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 440
    iget-boolean v3, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 441
    iput v7, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 443
    :cond_0
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:Ljava/util/HashMap;

    iget v4, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamResources;

    .line 444
    .local v0, "active":Lmiui/view/VolumePanel$StreamResources;
    if-nez v0, :cond_1

    .line 492
    :goto_0
    return-void

    .line 446
    :cond_1
    iget v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v3}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v2

    .line 447
    .local v2, "muted":Z
    iget-object v4, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget v3, v0, Lmiui/view/VolumePanel$StreamResources;->iconMuteRes:I

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    iget-object v3, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    iget v4, v0, Lmiui/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 450
    iget-object v3, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    iget v4, p0, Lmiui/view/VolumePanel;->mActiveStreamMax:I

    mul-int/lit8 v4, v4, 0x19

    invoke-virtual {v3, v4}, Lmiui/widget/CircleProgressView;->setMaxProgress(I)V

    .line 451
    iget v3, p0, Lmiui/view/VolumePanel;->mShowedVolume:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 452
    iget-object v3, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    iget v4, p0, Lmiui/view/VolumePanel;->mActiveStreamIndex:I

    mul-int/lit8 v4, v4, 0x19

    invoke-virtual {v3, v4}, Lmiui/widget/CircleProgressView;->setProgress(I)V

    .line 484
    :cond_2
    :goto_2
    iget v3, p0, Lmiui/view/VolumePanel;->mActiveStreamIndex:I

    iput v3, p0, Lmiui/view/VolumePanel;->mShowedVolume:I

    .line 486
    iget v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 488
    iget-object v3, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    const v4, 0xa02002d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    :cond_3
    invoke-direct {p0}, Lmiui/view/VolumePanel;->updateStreamDevice()V

    goto :goto_0

    .line 447
    :cond_4
    iget v3, v0, Lmiui/view/VolumePanel$StreamResources;->iconRes:I

    goto :goto_1

    .line 455
    :cond_5
    iget-object v3, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    invoke-virtual {v3}, Lmiui/widget/CircleProgressView;->getProgress()I

    move-result v1

    .line 456
    .local v1, "currentProgress":I
    iget v3, p0, Lmiui/view/VolumePanel;->mActiveStreamIndex:I

    mul-int/lit8 v3, v3, 0x19

    if-eq v1, v3, :cond_6

    .line 457
    iget v3, p0, Lmiui/view/VolumePanel;->mShowedVolume:I

    iget v4, p0, Lmiui/view/VolumePanel;->mActiveStreamIndex:I

    if-eq v3, v4, :cond_2

    .line 458
    iget-object v3, p0, Lmiui/view/VolumePanel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v7, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    iget v5, p0, Lmiui/view/VolumePanel;->mActiveStreamIndex:I

    mul-int/lit8 v5, v5, 0x19

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 459
    iget-object v3, p0, Lmiui/view/VolumePanel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 463
    :cond_6
    iget-object v3, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    invoke-virtual {v3}, Lmiui/widget/CircleProgressView;->getMaxProgress()I

    move-result v3

    if-ne v1, v3, :cond_7

    .line 464
    iget-object v3, p0, Lmiui/view/VolumePanel;->mMaxVolumeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 465
    iget-object v3, p0, Lmiui/view/VolumePanel;->mMaxVolumeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 468
    :cond_7
    if-nez v1, :cond_2

    .line 469
    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    iget v4, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v6, :cond_8

    .line 471
    iget-object v3, p0, Lmiui/view/VolumePanel;->mVibrateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 472
    iget-object v3, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 473
    iget-object v3, p0, Lmiui/view/VolumePanel;->mVibrateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    .line 477
    :cond_8
    iget-object v3, p0, Lmiui/view/VolumePanel;->mSilentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 478
    iget-object v3, p0, Lmiui/view/VolumePanel;->mSilentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2
.end method

.method private updateStreamDevice()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 495
    const/4 v1, 0x0

    .line 497
    .local v1, "deviceIcon":I
    iget v2, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 498
    iget v2, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 499
    .local v0, "device":I
    iget v2, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-nez v2, :cond_1

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 500
    const v1, 0xa02002e

    .line 508
    .end local v0    # "device":I
    :cond_0
    :goto_0
    iget-object v5, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v2, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    iget-object v2, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    return-void

    .line 502
    .restart local v0    # "device":I
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_2

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_0

    .line 504
    :cond_2
    const v1, 0xa020024

    goto :goto_0

    .end local v0    # "device":I
    :cond_3
    move v2, v4

    .line 508
    goto :goto_1

    :cond_4
    move v3, v4

    .line 509
    goto :goto_2
.end method


# virtual methods
.method dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 311
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/view/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    iput-boolean v3, p0, Lmiui/view/VolumePanel;->mVisible:Z

    .line 315
    invoke-direct {p0}, Lmiui/view/VolumePanel;->cancelAnimations()V

    .line 317
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 318
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 320
    iget v1, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    iget v2, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    invoke-static {v1, v2}, Lmiui/util/AudioManagerHelper;->saveLastAudibleRingVolume(Landroid/content/Context;I)V

    .line 322
    iput v3, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 324
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 325
    iget-object v1, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 883
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 947
    :goto_0
    :pswitch_0
    return-void

    .line 886
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 891
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 896
    :pswitch_3
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 901
    :pswitch_4
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 906
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 911
    :pswitch_6
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 916
    :pswitch_7
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->dismiss()V

    .line 918
    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 920
    :cond_0
    sget-object v1, Lmiui/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 921
    :try_start_0
    sget-object v0, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 922
    sget-object v0, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 924
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 932
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 937
    :pswitch_9
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 944
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto :goto_0

    .line 883
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 518
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "isVisible()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mVisible:Z

    return v0
.end method

.method public isVoiceMutable()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mIsVoiceMutable:Z

    return v0
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 792
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    :cond_0
    sget-object v2, Lmiui/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 794
    :try_start_0
    sget-object v1, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 795
    monitor-exit v2

    .line 819
    :goto_0
    return-void

    .line 797
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0xa0b002d

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040013

    new-instance v4, Lmiui/view/VolumePanel$4;

    invoke-direct {v4, p0}, Lmiui/view/VolumePanel$4;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1010355

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 808
    new-instance v0, Lmiui/view/VolumePanel$WarningDialogReceiver;

    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v3, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v0, v1, v3, p0}, Lmiui/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;Lmiui/view/VolumePanel;)V

    .line 811
    .local v0, "warning":Lmiui/view/VolumePanel$WarningDialogReceiver;
    sget-object v1, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 812
    sget-object v1, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7d9

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 814
    sget-object v1, Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 815
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->updateStates()V

    .line 818
    .end local v0    # "warning":Lmiui/view/VolumePanel$WarningDialogReceiver;
    :cond_2
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    goto :goto_0

    .line 815
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 864
    monitor-enter p0

    .line 865
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    .line 866
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    .line 867
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    .line 868
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    .line 869
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    .line 870
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;

    .line 872
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 873
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 874
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 876
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 872
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 878
    :cond_1
    monitor-exit p0

    .line 879
    return-void

    .line 878
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 960
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v8, "statusbar"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 961
    .local v5, "sbm":Landroid/app/StatusBarManager;
    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 963
    const-string v7, "com.android.settings/com.android.settings.sound.RingerVolumeActivity"

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 964
    .local v1, "component":Landroid/content/ComponentName;
    const-string v0, "com.android.settings.FRAGMENT_CLASS"

    .line 965
    .local v0, "META_DATA_KEY_FRAGMENT_CLASS":Ljava/lang/String;
    const/4 v6, 0x0

    .line 967
    .local v6, "value":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 968
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 969
    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 975
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-boolean v7, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v7, :cond_1

    .line 976
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 977
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.MiuiSettings"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    :goto_1
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 987
    :try_start_1
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 988
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 993
    :goto_2
    const/4 v7, 0x1

    return v7

    .line 980
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 981
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 989
    :catch_0
    move-exception v2

    .line 990
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start activity exception, component = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 971
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method protected onMuteChanged(II)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 612
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMuteChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    invoke-direct {p0}, Lmiui/view/VolumePanel;->updateMajorProgress()V

    .line 615
    invoke-virtual {p0, p1, p2}, Lmiui/view/VolumePanel;->onVolumeChanged(II)V

    .line 616
    return-void
.end method

.method protected onPlaySound(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x3

    .line 720
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 723
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 726
    :cond_0
    monitor-enter p0

    .line 727
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 728
    .local v0, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 729
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 730
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 732
    :cond_1
    monitor-exit p0

    .line 733
    return-void

    .line 732
    .end local v0    # "toneGen":Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 757
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 760
    :cond_1
    monitor-enter p0

    .line 761
    const/16 v0, -0xc8

    :try_start_0
    invoke-virtual {p0, v0, p2}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 762
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    :cond_2
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    .line 768
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 769
    invoke-virtual {p0, v3, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 772
    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 773
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 774
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 775
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 778
    :cond_4
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 779
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 781
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 782
    return-void

    .line 762
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 764
    :cond_5
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "VolumePanel"

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 785
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    .line 787
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 789
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 9
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const v8, 0xa020025

    const/4 v7, 0x1

    .line 619
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 621
    .local v0, "index":I
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    .line 623
    sget-boolean v4, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    .line 624
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onShowVolumeChanged(streamType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 632
    .local v1, "max":I
    sparse-switch p1, :sswitch_data_0

    .line 698
    :cond_1
    :goto_0
    :sswitch_0
    iget v4, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-eq p1, v4, :cond_2

    .line 699
    invoke-direct {p0}, Lmiui/view/VolumePanel;->cancelAnimations()V

    .line 702
    :cond_2
    iput p1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 703
    iput v0, p0, Lmiui/view/VolumePanel;->mActiveStreamIndex:I

    .line 704
    iput v1, p0, Lmiui/view/VolumePanel;->mActiveStreamMax:I

    .line 706
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v4

    if-nez v4, :cond_3

    .line 707
    const/16 v4, -0xc8

    if-ne p1, v4, :cond_5

    const/4 v3, -0x1

    .line 709
    .local v3, "stream":I
    :goto_1
    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 710
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->show()V

    .line 712
    .end local v3    # "stream":I
    :cond_3
    invoke-direct {p0}, Lmiui/view/VolumePanel;->updateMajorProgress()V

    .line 714
    invoke-virtual {p0, v7}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 715
    invoke-virtual {p0, v7}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x2710

    invoke-virtual {p0, v4, v5, v6}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 716
    return-void

    .line 636
    :sswitch_1
    iget-object v4, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 638
    .local v2, "ringuri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 639
    iput-boolean v7, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto :goto_0

    .line 646
    .end local v2    # "ringuri":Landroid/net/Uri;
    :sswitch_2
    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_4

    .line 650
    const v4, 0xa020021

    const v5, 0xa020022

    invoke-direct {p0, v4, v5}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto :goto_0

    .line 652
    :cond_4
    invoke-direct {p0, v8, v8}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto :goto_0

    .line 663
    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 664
    add-int/lit8 v1, v1, 0x1

    .line 665
    goto :goto_0

    .line 673
    :sswitch_4
    iget-object v4, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 675
    .restart local v2    # "ringuri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 676
    iput-boolean v7, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto :goto_0

    .line 687
    .end local v2    # "ringuri":Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 688
    add-int/lit8 v1, v1, 0x1

    .line 689
    goto :goto_0

    .line 693
    :sswitch_6
    sget-boolean v4, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_1

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showing remote volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " over "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move v3, p1

    .line 707
    goto :goto_1

    .line 632
    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 737
    monitor-enter p0

    .line 738
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 739
    .local v1, "numStreamTypes":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 740
    iget-object v3, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 741
    .local v2, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 742
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 739
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 745
    .end local v2    # "toneGen":Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 746
    return-void

    .line 745
    .end local v0    # "i":I
    .end local v1    # "numStreamTypes":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 750
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 751
    return-void
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 586
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 589
    monitor-enter p0

    .line 590
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 591
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_2

    .line 595
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 596
    invoke-virtual {p0, v3, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 599
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    .line 600
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 601
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 602
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 605
    :cond_3
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 606
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 608
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 609
    return-void

    .line 591
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/16 v1, 0xb

    .line 575
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    :goto_0
    return-void

    .line 576
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 554
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 571
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lmiui/view/VolumePanel;->postMuteChanged(II)V

    .line 572
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 561
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lmiui/view/VolumePanel;->postVolumeChanged(II)V

    .line 562
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x7

    .line 565
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 567
    invoke-virtual {p0, v1, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 538
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 540
    return-void

    .line 538
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 532
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 534
    invoke-virtual {p0, v1, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 523
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 526
    :cond_0
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 528
    invoke-virtual {p0, v1, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 372
    invoke-direct {p0}, Lmiui/view/VolumePanel;->forceTimeout()V

    .line 373
    return-void
.end method

.method show()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, -0x2

    .line 274
    iput-boolean v10, p0, Lmiui/view/VolumePanel;->mVisible:Z

    .line 275
    invoke-direct {p0}, Lmiui/view/VolumePanel;->createVolumePanel()V

    .line 277
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e4

    const v4, 0x1040108

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 285
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "Volume control"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    const v1, 0xa0c0003

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 288
    iget-object v1, p0, Lmiui/view/VolumePanel;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 289
    .local v6, "degree":I
    const/4 v1, 0x2

    if-eq v1, v6, :cond_0

    if-nez v6, :cond_1

    .line 290
    :cond_0
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 291
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 292
    .local v8, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lmiui/view/VolumePanel;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 293
    iget-object v1, p0, Lmiui/view/VolumePanel;->mResources:Landroid/content/res/Resources;

    const v2, 0xa0e0001

    iget v3, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v10}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 299
    .end local v8    # "size":Landroid/graphics/Point;
    :goto_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 300
    .local v9, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-interface {v9, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/view/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    const/4 v1, -0x1

    iput v1, p0, Lmiui/view/VolumePanel;->mShowedVolume:I

    .line 308
    return-void

    .line 296
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method public updateStates()V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0}, Lmiui/view/VolumePanel;->updateMajorProgress()V

    .line 515
    return-void
.end method
